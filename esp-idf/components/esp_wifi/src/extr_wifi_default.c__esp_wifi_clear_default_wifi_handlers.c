
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shutdown_handler_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int WIFI_EVENT ;
 int WIFI_EVENT_AP_START ;
 int WIFI_EVENT_AP_STOP ;
 int WIFI_EVENT_STA_CONNECTED ;
 int WIFI_EVENT_STA_DISCONNECTED ;
 int WIFI_EVENT_STA_START ;
 int WIFI_EVENT_STA_STOP ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 int esp_unregister_shutdown_handler (int ) ;
 scalar_t__ esp_wifi_stop ;
 int wifi_default_action_ap_start ;
 int wifi_default_action_ap_stop ;
 int wifi_default_action_sta_connected ;
 int wifi_default_action_sta_disconnected ;
 int wifi_default_action_sta_got_ip ;
 int wifi_default_action_sta_start ;
 int wifi_default_action_sta_stop ;
 int wifi_default_handlers_set ;

esp_err_t _esp_wifi_clear_default_wifi_handlers(void)
{
    esp_event_handler_unregister(WIFI_EVENT, WIFI_EVENT_STA_START, wifi_default_action_sta_start);
    esp_event_handler_unregister(WIFI_EVENT, WIFI_EVENT_STA_STOP, wifi_default_action_sta_stop);
    esp_event_handler_unregister(WIFI_EVENT, WIFI_EVENT_STA_CONNECTED, wifi_default_action_sta_connected);
    esp_event_handler_unregister(WIFI_EVENT, WIFI_EVENT_STA_DISCONNECTED, wifi_default_action_sta_disconnected);
    esp_event_handler_unregister(WIFI_EVENT, WIFI_EVENT_AP_START, wifi_default_action_ap_start);
    esp_event_handler_unregister(WIFI_EVENT, WIFI_EVENT_AP_STOP, wifi_default_action_ap_stop);
    esp_event_handler_unregister(IP_EVENT, IP_EVENT_STA_GOT_IP, wifi_default_action_sta_got_ip);
    esp_unregister_shutdown_handler((shutdown_handler_t)esp_wifi_stop);
    wifi_default_handlers_set = 0;
    return ESP_OK;
}
