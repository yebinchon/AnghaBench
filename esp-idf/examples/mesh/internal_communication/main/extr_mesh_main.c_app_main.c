
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wifi_init_config_t ;
typedef int uint8_t ;
struct TYPE_7__ {int password; int max_connection; } ;
struct TYPE_6__ {int ssid_len; int password; int ssid; } ;
struct TYPE_8__ {TYPE_2__ mesh_ap; TYPE_1__ router; int channel; int mesh_id; } ;
typedef TYPE_3__ mesh_cfg_t ;


 int CONFIG_MESH_AP_AUTHMODE ;
 int CONFIG_MESH_AP_CONNECTIONS ;
 int CONFIG_MESH_AP_PASSWD ;
 int CONFIG_MESH_CHANNEL ;
 int CONFIG_MESH_MAX_LAYER ;
 int CONFIG_MESH_ROUTER_PASSWD ;
 int CONFIG_MESH_ROUTER_SSID ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGI (int ,char*,int ,char*) ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int MESH_EVENT ;
 int MESH_ID ;
 TYPE_3__ MESH_INIT_CONFIG_DEFAULT () ;
 int MESH_TAG ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_STORAGE_FLASH ;
 int esp_event_handler_register (int ,int ,int *,int *) ;
 int esp_event_loop_create_default () ;
 int esp_get_free_heap_size () ;
 int esp_mesh_init () ;
 scalar_t__ esp_mesh_is_root_fixed () ;
 int esp_mesh_set_ap_assoc_expire (int) ;
 int esp_mesh_set_ap_authmode (int ) ;
 int esp_mesh_set_config (TYPE_3__*) ;
 int esp_mesh_set_max_layer (int ) ;
 int esp_mesh_set_vote_percentage (int) ;
 int esp_mesh_start () ;
 int esp_netif_create_default_wifi_mesh_netifs (int *,int *) ;
 int esp_netif_init () ;
 int esp_wifi_init (int *) ;
 int esp_wifi_set_storage (int ) ;
 int esp_wifi_start () ;
 int ip_event_handler ;
 int memcpy (int *,int ,int) ;
 int mesh_event_handler ;
 int mesh_light_init () ;
 int netif_sta ;
 int nvs_flash_init () ;
 int strlen (int ) ;

void app_main(void)
{
    ESP_ERROR_CHECK(mesh_light_init());
    ESP_ERROR_CHECK(nvs_flash_init());

    esp_netif_init();

    ESP_ERROR_CHECK(esp_event_loop_create_default());

    ESP_ERROR_CHECK(esp_netif_create_default_wifi_mesh_netifs(&netif_sta, ((void*)0)));

    wifi_init_config_t config = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&config));
    ESP_ERROR_CHECK(esp_event_handler_register(IP_EVENT, IP_EVENT_STA_GOT_IP, &ip_event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_wifi_set_storage(WIFI_STORAGE_FLASH));
    ESP_ERROR_CHECK(esp_wifi_start());

    ESP_ERROR_CHECK(esp_mesh_init());
    ESP_ERROR_CHECK(esp_event_handler_register(MESH_EVENT, ESP_EVENT_ANY_ID, &mesh_event_handler, ((void*)0)));
    ESP_ERROR_CHECK(esp_mesh_set_max_layer(CONFIG_MESH_MAX_LAYER));
    ESP_ERROR_CHECK(esp_mesh_set_vote_percentage(1));
    ESP_ERROR_CHECK(esp_mesh_set_ap_assoc_expire(10));
    mesh_cfg_t cfg = MESH_INIT_CONFIG_DEFAULT();

    memcpy((uint8_t *) &cfg.mesh_id, MESH_ID, 6);

    cfg.channel = CONFIG_MESH_CHANNEL;
    cfg.router.ssid_len = strlen(CONFIG_MESH_ROUTER_SSID);
    memcpy((uint8_t *) &cfg.router.ssid, CONFIG_MESH_ROUTER_SSID, cfg.router.ssid_len);
    memcpy((uint8_t *) &cfg.router.password, CONFIG_MESH_ROUTER_PASSWD,
           strlen(CONFIG_MESH_ROUTER_PASSWD));

    ESP_ERROR_CHECK(esp_mesh_set_ap_authmode(CONFIG_MESH_AP_AUTHMODE));
    cfg.mesh_ap.max_connection = CONFIG_MESH_AP_CONNECTIONS;
    memcpy((uint8_t *) &cfg.mesh_ap.password, CONFIG_MESH_AP_PASSWD,
           strlen(CONFIG_MESH_AP_PASSWD));
    ESP_ERROR_CHECK(esp_mesh_set_config(&cfg));

    ESP_ERROR_CHECK(esp_mesh_start());
    ESP_LOGI(MESH_TAG, "mesh starts successfully, heap:%d, %s\n", esp_get_free_heap_size(),
             esp_mesh_is_root_fixed() ? "root fixed" : "root not fixed");
}
