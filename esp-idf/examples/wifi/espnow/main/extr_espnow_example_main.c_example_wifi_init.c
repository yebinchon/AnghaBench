
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_init_config_t ;


 int ESPNOW_WIFI_IF ;
 int ESPNOW_WIFI_MODE ;
 int ESP_ERROR_CHECK (int ) ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_PROTOCOL_11B ;
 int WIFI_PROTOCOL_11G ;
 int WIFI_PROTOCOL_11N ;
 int WIFI_PROTOCOL_LR ;
 int WIFI_STORAGE_RAM ;
 int esp_event_loop_create_default () ;
 int esp_netif_init () ;
 int esp_wifi_init (int *) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_set_protocol (int ,int) ;
 int esp_wifi_set_storage (int ) ;
 int esp_wifi_start () ;

__attribute__((used)) static void example_wifi_init(void)
{
    esp_netif_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_wifi_init(&cfg) );
    ESP_ERROR_CHECK( esp_wifi_set_storage(WIFI_STORAGE_RAM) );
    ESP_ERROR_CHECK( esp_wifi_set_mode(ESPNOW_WIFI_MODE) );
    ESP_ERROR_CHECK( esp_wifi_start());




}
