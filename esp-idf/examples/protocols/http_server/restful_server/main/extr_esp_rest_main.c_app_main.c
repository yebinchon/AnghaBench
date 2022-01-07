
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_EXAMPLE_MDNS_HOST_NAME ;
 int CONFIG_EXAMPLE_WEB_MOUNT_POINT ;
 int ESP_ERROR_CHECK (int ) ;
 int esp_event_loop_create_default () ;
 int esp_netif_init () ;
 int example_connect () ;
 int init_fs () ;
 int initialise_mdns () ;
 int netbiosns_init () ;
 int netbiosns_set_name (int ) ;
 int nvs_flash_init () ;
 int start_rest_server (int ) ;

void app_main(void)
{
    ESP_ERROR_CHECK(nvs_flash_init());
    esp_netif_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    initialise_mdns();
    netbiosns_init();
    netbiosns_set_name(CONFIG_EXAMPLE_MDNS_HOST_NAME);

    ESP_ERROR_CHECK(example_connect());
    ESP_ERROR_CHECK(init_fs());
    ESP_ERROR_CHECK(start_rest_server(CONFIG_EXAMPLE_WEB_MOUNT_POINT));
}
