import UIKit
import FirebaseAuth
import FirebaseCore

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if error == nil {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }else{
                    print(error?.localizedDescription)
                }
              
            }
        }
        
    }
    
}
