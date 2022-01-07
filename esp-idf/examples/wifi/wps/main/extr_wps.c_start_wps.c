
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_init_config_t ;
typedef int esp_netif_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGI (int ,char*) ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int TAG ;
 int WIFI_EVENT ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_MODE_STA ;
 int assert (int *) ;
 int config ;
 int esp_event_handler_register (int ,int ,int *,int *) ;
 int esp_event_loop_create_default () ;
 int * esp_netif_create_default_wifi_sta () ;
 int esp_netif_init () ;
 int esp_wifi_init (int *) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_start () ;
 int esp_wifi_wps_enable (int *) ;
 int esp_wifi_wps_start (int ) ;
 int got_ip_event_handler ;
 int wifi_event_handler ;

__attribute__((used)) static void start_wps(void)
{
    esp_netif_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_t *sta_netif = esp_netif_create_default_wifi_sta();
    assert(sta_netif);

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    ESP_ERROR_CHECK(esp_event_handler_register(WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &got_ip_event_handler, ((void*)0)));

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());

    ESP_LOGI(TAG, "start wps...");

    ESP_ERROR_CHECK(esp_wifi_wps_enable(&config));
    ESP_ERROR_CHECK(esp_wifi_wps_start(0));
}
