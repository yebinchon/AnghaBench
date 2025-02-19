
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wifi_init_config_t ;
struct TYPE_4__ {int ssid; int rssi; scalar_t__ authmode; int primary; int group_cipher; int pairwise_cipher; } ;
typedef TYPE_1__ wifi_ap_record_t ;
typedef int uint16_t ;
typedef int esp_netif_t ;
typedef int ap_info ;


 int DEFAULT_SCAN_LIST_SIZE ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int) ;
 int TAG ;
 scalar_t__ WIFI_AUTH_WEP ;
 int WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_MODE_STA ;
 int assert (int *) ;
 int esp_event_loop_create_default () ;
 int * esp_netif_create_default_wifi_sta () ;
 int esp_netif_init () ;
 int esp_wifi_init (int *) ;
 int esp_wifi_scan_get_ap_num (int*) ;
 int esp_wifi_scan_get_ap_records (int*,TYPE_1__*) ;
 int esp_wifi_scan_start (int *,int) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_start () ;
 int memset (TYPE_1__*,int ,int) ;
 int print_auth_mode (scalar_t__) ;
 int print_cipher_type (int ,int ) ;

__attribute__((used)) static void wifi_scan(void)
{
    esp_netif_init();
    ESP_ERROR_CHECK(esp_event_loop_create_default());
    esp_netif_t *sta_netif = esp_netif_create_default_wifi_sta();
    assert(sta_netif);

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    uint16_t number = DEFAULT_SCAN_LIST_SIZE;
    wifi_ap_record_t ap_info[DEFAULT_SCAN_LIST_SIZE];
    uint16_t ap_count = 0;
    memset(ap_info, 0, sizeof(ap_info));

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());
    ESP_ERROR_CHECK(esp_wifi_scan_start(((void*)0), 1));
    ESP_ERROR_CHECK(esp_wifi_scan_get_ap_records(&number, ap_info));
    ESP_ERROR_CHECK(esp_wifi_scan_get_ap_num(&ap_count));
    ESP_LOGI(TAG, "Total APs scanned = %u", ap_count);
    for (int i = 0; (i < DEFAULT_SCAN_LIST_SIZE) && (i < ap_count); i++) {
        ESP_LOGI(TAG, "SSID \t\t%s", ap_info[i].ssid);
        ESP_LOGI(TAG, "RSSI \t\t%d", ap_info[i].rssi);
        print_auth_mode(ap_info[i].authmode);
        if (ap_info[i].authmode != WIFI_AUTH_WEP) {
            print_cipher_type(ap_info[i].pairwise_cipher, ap_info[i].group_cipher);
        }
        ESP_LOGI(TAG, "Channel \t\t%d\n", ap_info[i].primary);
    }

}
