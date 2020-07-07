//
//  Filters.swift
//  ImageFilterEditor
//
//  Created by Vincent Hoang on 7/7/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation
import CoreImage
import UIKit

class Filters {
    static func boxBlur(inputImage: CIImage, inputRadius: Float = 10.0) -> CIImage {
        let context = CIContext()
        
        let filter = CIFilter(name: "CIBoxBlur")!
        
        filter.setValue(inputRadius, forKey: "inputRadius")
        filter.setValue(inputImage, forKey: "inputImage")
        
        let result = filter.outputImage!
        let image = context.createCGImage(result, from: result.extent)!
        
        return CIImage(cgImage: image)
    }
    
    static func vignette(inputImage: CIImage, inputRadius: Float = 1.0, inputIntensity: Float = 0.0) -> CIImage {
        let context = CIContext()
        
        let filter = CIFilter(name: "CIVignette")!
        
        filter.setValue(inputRadius, forKey: "inputRadius")
        filter.setValue(inputIntensity, forKey: "inputIntensity")
        filter.setValue(inputImage, forKey: "inputImage")
        
        let result = filter.outputImage!
        let image = context.createCGImage(result, from: result.extent)!
        
        return CIImage(cgImage: image)
    }
    
    
    
    
}
