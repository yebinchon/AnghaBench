
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_EVENT_ANY_ID ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int WIFI_EVENT ;
 int WIFI_MODE_STA ;
 int esp_event_handler_register (int ,int ,int ,int *) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_start () ;
 int event_handler ;

__attribute__((used)) static void wifi_init_sta(void)
{

    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, event_handler, ((void*)0)));


    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());
}
