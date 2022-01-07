
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smartconfig_start_config_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SC_EVENT ;
 int SC_EVENT_GOT_SSID_PSWD ;
 int TAG ;
 scalar_t__ esp_event_handler_register (int ,int ,int ,int *) ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 scalar_t__ esp_smartconfig_internal_start (int const*) ;
 int handler_got_ssid_passwd ;

esp_err_t esp_smartconfig_start(const smartconfig_start_config_t *config)
{
    esp_err_t err = ESP_OK;

    err = esp_event_handler_register(SC_EVENT, SC_EVENT_GOT_SSID_PSWD, handler_got_ssid_passwd, ((void*)0));
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Register smartconfig default event handler fail!");
        return err;
    }

    err = esp_smartconfig_internal_start(config);
    if (err != ESP_OK) {
        esp_event_handler_unregister(SC_EVENT, SC_EVENT_GOT_SSID_PSWD, handler_got_ssid_passwd);
    }
    return err;
}
