Pod::Spec.new do |spec|
  spec.name         = "QTSCardReader"
  spec.version      = "1.3.6"
  spec.summary      = "QTSCardReader SDK for iOS."
  spec.homepage     = "https://github.com/trungnguyen1791/QTSCardReader"
  spec.author           = { 'My Name' => 'myemail@example.com' }
  spec.license      = "MIT"
  spec.source       = { :git => "https://github.com/trungnguyen1791/QTSCardReader.git", :branch => "ncb" }
  
  spec.platform = :ios
  spec.ios.deployment_target = "15.5"

  spec.vendored_frameworks = [
    'Frameworks/IDCardReader.xcframework',
  ]

  spec.dependency "ObjectMapper", '~> 4.2'
  spec.dependency "KeychainSwift", '24.0.0'
  spec.dependency "CryptoSwift", '~> 1.8.2'
  spec.dependency "SignManager", '~> 1.0.9'
  spec.dependency "OpenSSL-Universal", '~> 1.1.1100'

  spec.swift_version = "5.0"
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


end