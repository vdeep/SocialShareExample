//
//  ViewController.swift
//  SocialShareExample
//
//  Created by Vishal on 06/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var switchEnableText: UISwitch!
    @IBOutlet private weak var switchEnableURL: UISwitch!
    @IBOutlet private weak var switchEnableImage: UISwitch!
    @IBOutlet private weak var switchAppendURLToText: UISwitch!

    @IBAction private func showShareDialog(_ sender: UIButton) {
        var itemsToShare: [Any] = []
        
        if switchEnableText.isOn {
            var textToShare = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ultricies justo ut aliquam fermentum. Maecenas nec sodales elit. Nulla facilisi."
            
            if switchAppendURLToText.isOn {
                textToShare = [
                    textToShare,
                    "https://www.google.com"
                ].joined(separator: " ")
            }
            
            itemsToShare.append(textToShare)
        }
        
        if switchEnableURL.isOn {
            itemsToShare.append(URL(string: "https://www.google.com/")!)
        }
        
        if switchEnableImage.isOn {
            itemsToShare.append(UIImage(named: "rickroll_4k")!)
        }
        
        let controller = UIActivityViewController(
            activityItems: itemsToShare,
            applicationActivities: nil
        )
        
        present(controller, animated: true)
    }
}

