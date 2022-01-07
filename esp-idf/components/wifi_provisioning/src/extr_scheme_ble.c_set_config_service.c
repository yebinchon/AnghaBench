
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int service_uuid; int device_name; } ;
typedef TYPE_1__ protocomm_ble_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 scalar_t__ custom_service_uuid ;
 int memcpy (int ,scalar_t__,int) ;
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

    protocomm_ble_config_t *ble_config = (protocomm_ble_config_t *) config;
    strlcpy(ble_config->device_name, service_name, sizeof(ble_config->device_name));


    if (custom_service_uuid) {
        memcpy(ble_config->service_uuid, custom_service_uuid, sizeof(ble_config->service_uuid));
    }
    return ESP_OK;
}
