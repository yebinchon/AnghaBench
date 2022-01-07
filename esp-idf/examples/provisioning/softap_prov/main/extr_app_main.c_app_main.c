
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_init_config_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 scalar_t__ app_prov_is_provisioned (int*) ;
 int esp_event_loop_create_default () ;
 int esp_netif_create_default_wifi_ap () ;
 int esp_netif_create_default_wifi_sta () ;
 int esp_netif_init () ;
 int esp_wifi_init (int *) ;
 int nvs_flash_init () ;
 int start_softap_provisioning () ;
 int wifi_init_sta () ;

void app_main(void)
{

    esp_netif_init();



    ESP_ERROR_CHECK(esp_event_loop_create_default());


    ESP_ERROR_CHECK(nvs_flash_init());


    esp_netif_create_default_wifi_sta();
    esp_netif_create_default_wifi_ap();
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));


    bool provisioned;
    if (app_prov_is_provisioned(&provisioned) != ESP_OK) {
        ESP_LOGE(TAG, "Error getting device provisioning state");
        return;
    }

    if (provisioned == 0) {

        ESP_LOGI(TAG, "Starting WiFi SoftAP provisioning");
        start_softap_provisioning();
    } else {

        ESP_LOGI(TAG, "Starting WiFi station");
        wifi_init_sta();
    }
}
