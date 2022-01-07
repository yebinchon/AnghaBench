
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_init_config_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOG_WARN ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int WIFI_EVENT ;
 int WIFI_EVENT_SCAN_DONE ;
 int WIFI_EVENT_STA_DISCONNECTED ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_MODE_NULL ;
 int WIFI_STORAGE_RAM ;
 int assert (int ) ;
 int disconnect_handler ;
 int esp_event_handler_register (int ,int ,int *,int *) ;
 int esp_event_loop_create_default () ;
 int esp_log_level_set (char*,int ) ;
 int esp_netif_create_default_wifi_ap () ;
 int esp_netif_create_default_wifi_sta () ;
 int esp_netif_init () ;
 int esp_wifi_init (int *) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_set_storage (int ) ;
 int esp_wifi_start () ;
 int got_ip_handler ;
 int netif_ap ;
 int netif_sta ;
 int scan_done_handler ;
 int wifi_event_group ;
 int xEventGroupCreate () ;

void initialise_wifi(void)
{
    esp_log_level_set("wifi", ESP_LOG_WARN);
    static bool initialized = 0;

    if (initialized) {
        return;
    }

    esp_netif_init();
    wifi_event_group = xEventGroupCreate();
    ESP_ERROR_CHECK( esp_event_loop_create_default() );
    netif_ap = esp_netif_create_default_wifi_ap();
    assert(netif_ap);
    netif_sta = esp_netif_create_default_wifi_sta();
    assert(netif_sta);
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_wifi_init(&cfg) );
    ESP_ERROR_CHECK( esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_SCAN_DONE, &scan_done_handler, ((void*)0)) );
    ESP_ERROR_CHECK( esp_event_handler_register(WIFI_EVENT, WIFI_EVENT_STA_DISCONNECTED, &disconnect_handler, ((void*)0)) );
    ESP_ERROR_CHECK( esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &got_ip_handler, ((void*)0)) );
    ESP_ERROR_CHECK( esp_wifi_set_storage(WIFI_STORAGE_RAM) );
    ESP_ERROR_CHECK( esp_wifi_set_mode(WIFI_MODE_NULL) );
    ESP_ERROR_CHECK( esp_wifi_start() );
    initialized = 1;
}
