
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_EVENT_ANY_ID ;
 int ESP_OK ;
 int IP_EVENT ;
 int TEST_ESP_OK (int ) ;
 int WIFI_EVENT ;
 int esp_event_handler_register (int ,int ,int *,int *) ;
 int esp_event_loop_create_default () ;
 int ip_event_handler ;
 int wifi_event_handler ;

__attribute__((used)) static int event_init(void)
{
    TEST_ESP_OK(esp_event_loop_create_default());
    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, ESP_EVENT_ANY_ID, &ip_event_handler, ((void*)0)));
    return ESP_OK;
}
