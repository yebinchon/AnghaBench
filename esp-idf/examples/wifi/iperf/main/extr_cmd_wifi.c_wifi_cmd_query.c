
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wifi_mode_t ;
struct TYPE_4__ {int ssid; int password; } ;
struct TYPE_5__ {TYPE_1__ ap; } ;
typedef TYPE_2__ wifi_config_t ;


 int CONNECTED_BIT ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int WIFI_IF_AP ;
 int WIFI_IF_STA ;
 scalar_t__ WIFI_MODE_AP ;
 scalar_t__ WIFI_MODE_STA ;
 int esp_wifi_get_config (int ,TYPE_2__*) ;
 int esp_wifi_get_mode (scalar_t__*) ;
 int wifi_event_group ;
 int xEventGroupWaitBits (int ,int,int ,int,int ) ;

__attribute__((used)) static int wifi_cmd_query(int argc, char** argv)
{
    wifi_config_t cfg;
    wifi_mode_t mode;

    esp_wifi_get_mode(&mode);
    if (WIFI_MODE_AP == mode) {
        esp_wifi_get_config(WIFI_IF_AP, &cfg);
        ESP_LOGI(TAG, "AP mode, %s %s", cfg.ap.ssid, cfg.ap.password);
    } else if (WIFI_MODE_STA == mode) {
        int bits = xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, 0, 1, 0);
        if (bits & CONNECTED_BIT) {
            esp_wifi_get_config(WIFI_IF_STA, &cfg);
            ESP_LOGI(TAG, "sta mode, connected %s", cfg.ap.ssid);
        } else {
            ESP_LOGI(TAG, "sta mode, disconnected");
        }
    } else {
        ESP_LOGI(TAG, "NULL mode");
        return 0;
    }

    return 0;
}
