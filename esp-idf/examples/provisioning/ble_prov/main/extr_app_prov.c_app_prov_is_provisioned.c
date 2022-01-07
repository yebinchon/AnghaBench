
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ password; scalar_t__ ssid; } ;
struct TYPE_5__ {TYPE_1__ sta; } ;
typedef TYPE_2__ wifi_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_IF_WIFI_STA ;
 int ESP_LOGI (int ,char*,char const*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ esp_wifi_get_config (int ,TYPE_2__*) ;
 int nvs_flash_erase () ;
 scalar_t__ strlen (char const*) ;

esp_err_t app_prov_is_provisioned(bool *provisioned)
{
    *provisioned = 0;






    wifi_config_t wifi_cfg;
    if (esp_wifi_get_config(ESP_IF_WIFI_STA, &wifi_cfg) != ESP_OK) {
        return ESP_FAIL;
    }

    if (strlen((const char*) wifi_cfg.sta.ssid)) {
        *provisioned = 1;
        ESP_LOGI(TAG, "Found ssid %s", (const char*) wifi_cfg.sta.ssid);
        ESP_LOGI(TAG, "Found password %s", (const char*) wifi_cfg.sta.password);
    }
    return ESP_OK;
}
