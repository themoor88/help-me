module Textable
  extend ActiveSupport::Concern

  def send_info_and_text_service(options)
    account_sid = 'ACe14702c84b4b464228917c28449b51fb'
    auth_token = '8c4be8562f5c29c8d0328b53adf0ef98'

    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @client.messages.create(
      to: '+16472909686',
      from: '+17788001702',
      body: 'hi imran this is your cool bro, wajid.'
    )
    puts "Your message has been sent."
  end
end