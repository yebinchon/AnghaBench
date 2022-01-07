
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ssid; } ;
struct TYPE_4__ {TYPE_3__ sta; } ;
typedef TYPE_1__ wifi_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_FAIL ;
 int ESP_IF_WIFI_STA ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int debug_print_wifi_credentials (TYPE_3__,char*) ;
 scalar_t__ esp_wifi_get_config (int ,TYPE_1__*) ;
 int prov_ctx_lock ;
 scalar_t__ strlen (char const*) ;

esp_err_t wifi_prov_mgr_is_provisioned(bool *provisioned)
{
    if (!provisioned) {
        return ESP_ERR_INVALID_ARG;
    }

    *provisioned = 0;

    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }


    wifi_config_t wifi_cfg;
    if (esp_wifi_get_config(ESP_IF_WIFI_STA, &wifi_cfg) != ESP_OK) {
        return ESP_FAIL;
    }

    if (strlen((const char *) wifi_cfg.sta.ssid)) {
        *provisioned = 1;
        debug_print_wifi_credentials(wifi_cfg.sta, "Found");
    }
    return ESP_OK;
}
