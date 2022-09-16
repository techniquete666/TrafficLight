
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var changeLightsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 70
        yellowLight.layer.cornerRadius = 70
        greenLight.layer.cornerRadius = 70
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        changeLightsButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func buttonTapped() {
        changeLightsButton.setTitle("Next", for: .normal)
        
        if redLight.alpha != 1 && yellowLight.alpha != 1 && greenLight.alpha != 1 {
            redLight.alpha = 1
        } else if yellowLight.alpha != 1 && greenLight.alpha != 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else if redLight.alpha != 1 && greenLight.alpha != 1 {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
        } else if redLight.alpha != 1 && yellowLight.alpha != 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
        }
        
    }
}
