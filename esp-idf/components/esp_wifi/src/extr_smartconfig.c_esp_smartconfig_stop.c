
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int SC_EVENT ;
 int SC_EVENT_GOT_SSID_PSWD ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 scalar_t__ esp_smartconfig_internal_stop () ;
 int handler_got_ssid_passwd ;
 int sc_send_ack_stop () ;

esp_err_t esp_smartconfig_stop(void)
{
    esp_err_t err = ESP_OK;

    err = esp_smartconfig_internal_stop();
    if (err == ESP_OK) {
        sc_send_ack_stop();
        esp_event_handler_unregister(SC_EVENT, SC_EVENT_GOT_SSID_PSWD, handler_got_ssid_passwd);
    }
    return err;
}
