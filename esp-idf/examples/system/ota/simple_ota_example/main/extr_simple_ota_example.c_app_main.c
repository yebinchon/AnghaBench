
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int WIFI_PS_NONE ;
 scalar_t__ esp_event_loop_create_default () ;
 int esp_netif_init () ;
 int esp_wifi_set_ps (int ) ;
 scalar_t__ example_connect () ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int simple_ota_example_task ;
 int xTaskCreate (int *,char*,int,int *,int,int *) ;

void app_main(void)
{

    esp_err_t err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {




        ESP_ERROR_CHECK(nvs_flash_erase());
        err = nvs_flash_init();
    }
    ESP_ERROR_CHECK(err);

    esp_netif_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());





    ESP_ERROR_CHECK(example_connect());
    xTaskCreate(&simple_ota_example_task, "ota_example_task", 8192, ((void*)0), 5, ((void*)0));
}
