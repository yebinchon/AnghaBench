
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bssid_set; int * bssid; int * password; int * ssid; } ;
struct TYPE_7__ {TYPE_1__ sta; } ;
typedef TYPE_2__ wifi_config_t ;
typedef int uint8_t ;
struct TYPE_8__ {int bssid_set; int password; int ssid; int bssid; } ;
typedef TYPE_3__ smartconfig_event_got_ssid_pswd_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ esp_event_base_t ;


 int CONNECTED_BIT ;
 int ESPTOUCH_DONE_BIT ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_IF_WIFI_STA ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ IP_EVENT ;
 scalar_t__ IP_EVENT_STA_GOT_IP ;
 scalar_t__ SC_EVENT ;
 scalar_t__ SC_EVENT_FOUND_CHANNEL ;
 scalar_t__ SC_EVENT_GOT_SSID_PSWD ;
 scalar_t__ SC_EVENT_SCAN_DONE ;
 scalar_t__ SC_EVENT_SEND_ACK_DONE ;
 int TAG ;
 scalar_t__ WIFI_EVENT ;
 scalar_t__ WIFI_EVENT_STA_DISCONNECTED ;
 scalar_t__ WIFI_EVENT_STA_START ;
 int bzero (TYPE_2__*,int) ;
 int esp_wifi_connect () ;
 int esp_wifi_disconnect () ;
 int esp_wifi_set_config (int ,TYPE_2__*) ;
 int memcpy (int *,int ,int) ;
 int s_wifi_event_group ;
 int smartconfig_example_task ;
 int xEventGroupClearBits (int ,int ) ;
 int xEventGroupSetBits (int ,int ) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

__attribute__((used)) static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        xTaskCreate(smartconfig_example_task, "smartconfig_example_task", 4096, ((void*)0), 3, ((void*)0));
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        esp_wifi_connect();
        xEventGroupClearBits(s_wifi_event_group, CONNECTED_BIT);
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        xEventGroupSetBits(s_wifi_event_group, CONNECTED_BIT);
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SCAN_DONE) {
        ESP_LOGI(TAG, "Scan done");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_FOUND_CHANNEL) {
        ESP_LOGI(TAG, "Found channel");
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_GOT_SSID_PSWD) {
        ESP_LOGI(TAG, "Got SSID and password");

        smartconfig_event_got_ssid_pswd_t *evt = (smartconfig_event_got_ssid_pswd_t *)event_data;
        wifi_config_t wifi_config;
        uint8_t ssid[33] = { 0 };
        uint8_t password[65] = { 0 };

        bzero(&wifi_config, sizeof(wifi_config_t));
        memcpy(wifi_config.sta.ssid, evt->ssid, sizeof(wifi_config.sta.ssid));
        memcpy(wifi_config.sta.password, evt->password, sizeof(wifi_config.sta.password));
        wifi_config.sta.bssid_set = evt->bssid_set;
        if (wifi_config.sta.bssid_set == 1) {
            memcpy(wifi_config.sta.bssid, evt->bssid, sizeof(wifi_config.sta.bssid));
        }

        memcpy(ssid, evt->ssid, sizeof(evt->ssid));
        memcpy(password, evt->password, sizeof(evt->password));
        ESP_LOGI(TAG, "SSID:%s", ssid);
        ESP_LOGI(TAG, "PASSWORD:%s", password);

        ESP_ERROR_CHECK( esp_wifi_disconnect() );
        ESP_ERROR_CHECK( esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config) );
        ESP_ERROR_CHECK( esp_wifi_connect() );
    } else if (event_base == SC_EVENT && event_id == SC_EVENT_SEND_ACK_DONE) {
        xEventGroupSetBits(s_wifi_event_group, ESPTOUCH_DONE_BIT);
    }
}
