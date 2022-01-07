
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int esp_event_loop_create_default () ;
 int esp_netif_init () ;
 int example_connect () ;
 int http2_task ;
 int nvs_flash_init () ;
 int xTaskCreate (int *,char*,int,int *,int,int *) ;

void app_main(void)
{
    ESP_ERROR_CHECK( nvs_flash_init() );
    esp_netif_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());





    ESP_ERROR_CHECK(example_connect());

    xTaskCreate(&http2_task, "http2_task", (1024 * 32), ((void*)0), 5, ((void*)0));
}
