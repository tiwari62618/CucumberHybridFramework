Feature: Registration functionality

Scenario: User creates an account only with mandatory fields
Given User navigate to Register Account page
When User enters the details into below fields
|firstName |Mohit									|
|lastName  |Tiwari								|
|telephone |6565656565						|
|password  |12345  							  |
And User selects Privacy Policy
And User clicks on Continue button
Then User account should get created successfully

Scenario: User creates an account only with all fields
Given User navigate to Register Account page
When User enters the details into below fields
|firstName |Mohit									|
|lastName  |Tiwari								|
|telephone |6565656565						|
|password  |12345  								|
And User selects Yes for Newsletter						  
And User selects Privacy Policy
And User clicks on Continue button
Then User account should get created successfully

Scenario: User creates a duplicate account
Given User navigate to Register Account page
When User enters the details into below fields with duplicate email
|firstName |Mohit									|
|lastName  |Tiwari								|
|email		 |tiwari3093@gmail.com	|
|telephone |6565656565						|
|password  |12345  								|
And User selects Yes for Newsletter						  
And User selects Privacy Policy
And User clicks on Continue button
Then User should get a proper warning about duplicate email

Scenario: User creates an account without filling any details
Given User navigate to Register Account page
When User dont enters any details into fields			  
And User clicks on Continue button
Then User should get a proper warning messages for every mandatory field

