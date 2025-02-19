
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shutdown_handler_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int WIFI_EVENT ;
 int WIFI_EVENT_AP_START ;
 int WIFI_EVENT_AP_STOP ;
 int WIFI_EVENT_STA_CONNECTED ;
 int WIFI_EVENT_STA_DISCONNECTED ;
 int WIFI_EVENT_STA_START ;
 int WIFI_EVENT_STA_STOP ;
 int _esp_wifi_clear_default_wifi_handlers () ;
 scalar_t__ esp_event_handler_register (int ,int ,int ,int *) ;
 scalar_t__ esp_register_shutdown_handler (int ) ;
 scalar_t__ esp_wifi_stop ;
 int wifi_default_action_ap_start ;
 int wifi_default_action_ap_stop ;
 int wifi_default_action_sta_connected ;
 int wifi_default_action_sta_disconnected ;
 int wifi_default_action_sta_got_ip ;
 int wifi_default_action_sta_start ;
 int wifi_default_action_sta_stop ;
 int wifi_default_handlers_set ;

esp_err_t _esp_wifi_set_default_wifi_handlers(void)
{
    if (wifi_default_handlers_set) {
        return ESP_OK;
    }
    esp_err_t err;
    err = esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_STA_START, wifi_default_action_sta_start, ((void*)0));
    if (err != ESP_OK) {
        goto fail;
    }

    err = esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_STA_STOP, wifi_default_action_sta_stop, ((void*)0));
    if (err != ESP_OK) {
        goto fail;
    }

    err = esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_STA_CONNECTED, wifi_default_action_sta_connected, ((void*)0));
    if (err != ESP_OK) {
        goto fail;
    }

    err = esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_STA_DISCONNECTED, wifi_default_action_sta_disconnected, ((void*)0));
    if (err != ESP_OK) {
        goto fail;
    }

    err = esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_AP_START, wifi_default_action_ap_start, ((void*)0));
    if (err != ESP_OK) {
        goto fail;
    }

    err = esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_AP_STOP, wifi_default_action_ap_stop, ((void*)0));
    if (err != ESP_OK) {
        goto fail;
    }

    err = esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, wifi_default_action_sta_got_ip, ((void*)0));
    if (err != ESP_OK) {
        goto fail;
    }

    err = esp_register_shutdown_handler((shutdown_handler_t)esp_wifi_stop);
    if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
        goto fail;
    }
    wifi_default_handlers_set = 1;
    return ESP_OK;

fail:
    _esp_wifi_clear_default_wifi_handlers();
    return err;
}
