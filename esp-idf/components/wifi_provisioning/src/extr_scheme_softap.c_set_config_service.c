
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int password; int ssid; } ;
typedef TYPE_1__ wifi_prov_softap_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static esp_err_t set_config_service(void *config, const char *service_name, const char *service_key)
{
    if (!config) {
        ESP_LOGE(TAG, "Cannot set null configuration");
        return ESP_ERR_INVALID_ARG;
    }

    if (!service_name) {
        ESP_LOGE(TAG, "Service name cannot be NULL");
        return ESP_ERR_INVALID_ARG;
    }

    wifi_prov_softap_config_t *softap_config = (wifi_prov_softap_config_t *) config;
    strlcpy(softap_config->ssid, service_name, sizeof(softap_config->ssid));
    if (service_key) {
        strlcpy(softap_config->password, service_key, sizeof(softap_config->password));
    }
    return ESP_OK;
}
