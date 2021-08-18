//
//  ReminderCircleLabel.swift
//  DateAid
//
//  Created by Aaron Williamson on 10/1/20.
//  Copyright © 2020 Aaron Williamson. All rights reserved.
//

import UIKit

class ReminderCircleLabel: CircleLabel {

    // MARK: Properties

    let dayPrior: Int

    // MARK: Initialization
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(dayPrior: Int) {
        self.dayPrior = dayPrior
        super.init(frame: .zero)
        lineBreakMode = .byWordWrapping
        textColor = .white
        font = FontType.avenirNextDemiBold(25).font
        text = "\(dayPrior)"
        
        layer.shadowColor = UIColor.black.cgColor
        switch traitCollection.userInterfaceStyle {
        case .light, .unspecified:
            layer.shadowRadius = 5.0
            layer.shadowOpacity = 0.8
            layer.shadowOffset = CGSize(width: 2, height: 2)
        case .dark:
            layer.shadowRadius = 10.0
            layer.shadowOpacity = 1.0
            layer.shadowOffset = CGSize(width: 0, height: 0)
        default:
            break
        }
    }
}