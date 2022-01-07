
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_EVENT_ANY_ID ;
 int ESP_OK ;
 int IP_EVENT ;
 int WIFI_EVENT ;
 int esp_event_handler_unregister (int ,int ,int *) ;
 int ip_event_handler ;
 int wifi_event_handler ;

__attribute__((used)) static int event_deinit(void)
{
    ESP_ERROR_CHECK(esp_event_handler_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler));
    ESP_ERROR_CHECK(esp_event_handler_unregister(IP_EVENT, ESP_EVENT_ANY_ID, &ip_event_handler));
    return ESP_OK;
}
