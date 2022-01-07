
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int name; int uuid; } ;
typedef TYPE_2__ protocomm_ble_name_uuid_t ;
struct TYPE_9__ {TYPE_1__* ble; } ;
typedef TYPE_3__ esp_local_ctrl_transport_config_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int nu_lookup_count; TYPE_2__* nu_lookup; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 int strdup (char const*) ;

__attribute__((used)) static esp_err_t declare_endpoint(esp_local_ctrl_transport_config_t *config, const char *ep_name, uint16_t ep_uuid)
{
    if (!config || !config->ble) {
        ESP_LOGE(TAG, "NULL configuration provided");
        return ESP_ERR_INVALID_ARG;
    }

    protocomm_ble_name_uuid_t *nu_lookup = realloc(config->ble->nu_lookup,
                                                   (config->ble->nu_lookup_count + 1)
                                                   * sizeof(protocomm_ble_name_uuid_t));
    if (!nu_lookup) {
        ESP_LOGE(TAG, "Failed to allocate memory for new endpoint entry");
        return ESP_ERR_NO_MEM;
    }
    config->ble->nu_lookup = nu_lookup;
    nu_lookup[config->ble->nu_lookup_count].uuid = ep_uuid;
    nu_lookup[config->ble->nu_lookup_count].name = strdup(ep_name);
    if (!nu_lookup[config->ble->nu_lookup_count].name) {
        ESP_LOGE(TAG, "Failed to allocate memory for new endpoint name");
        return ESP_ERR_NO_MEM;
    }
    config->ble->nu_lookup_count++;
    return ESP_OK;
}
