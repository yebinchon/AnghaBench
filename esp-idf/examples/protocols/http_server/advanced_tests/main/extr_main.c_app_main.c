
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * httpd_handle_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ETHERNET_EVENT_DISCONNECTED ;
 int ETH_EVENT ;
 int IP_EVENT ;
 int IP_EVENT_ETH_GOT_IP ;
 int IP_EVENT_STA_GOT_IP ;
 int WIFI_EVENT ;
 int WIFI_EVENT_STA_DISCONNECTED ;
 int connect_handler ;
 int disconnect_handler ;
 int esp_event_handler_register (int ,int ,int *,int **) ;
 int esp_event_loop_create_default () ;
 int esp_netif_init () ;
 int example_connect () ;
 int nvs_flash_init () ;
 int * start_tests () ;

void app_main(void)
{
    static httpd_handle_t server = ((void*)0);

    ESP_ERROR_CHECK(nvs_flash_init());
    esp_netif_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());





    ESP_ERROR_CHECK(example_connect());
    server = start_tests();
}
