
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int protocomm_ble_name_uuid_t ;
typedef int protocomm_ble_config_t ;
struct TYPE_7__ {TYPE_3__* ble; } ;
typedef TYPE_2__ esp_local_ctrl_transport_config_t ;
typedef int esp_err_t ;
struct TYPE_8__ {int nu_lookup_count; TYPE_1__* nu_lookup; int service_uuid; int device_name; } ;
struct TYPE_6__ {int name; int uuid; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 void* calloc (int,int) ;
 int free (TYPE_3__*) ;
 int memcpy (int ,int ,int) ;
 int strdup (int ) ;

__attribute__((used)) static esp_err_t copy_ble_config(esp_local_ctrl_transport_config_t *dest_config, const esp_local_ctrl_transport_config_t *src_config)
{
    if (!dest_config || !src_config || !src_config->ble) {
        ESP_LOGE(TAG, "NULL arguments provided");
        return ESP_ERR_INVALID_ARG;
    }

    dest_config->ble = calloc(1, sizeof(protocomm_ble_config_t));
    if (!dest_config->ble) {
        ESP_LOGE(TAG, "Failed to allocate memory for BLE transport config");
        return ESP_ERR_NO_MEM;
    }


    memcpy(dest_config->ble->device_name,
           src_config->ble->device_name,
           sizeof(src_config->ble->device_name));


    memcpy(dest_config->ble->service_uuid,
           src_config->ble->service_uuid,
           sizeof(src_config->ble->service_uuid));

    dest_config->ble->nu_lookup_count = 0;
    if (src_config->ble->nu_lookup_count) {

        dest_config->ble->nu_lookup = calloc(src_config->ble->nu_lookup_count,
                                             sizeof(protocomm_ble_name_uuid_t));
        if (!dest_config->ble->nu_lookup) {
            ESP_LOGE(TAG, "Failed to allocate memory for BLE characteristic names");
            free(dest_config->ble);
            return ESP_ERR_NO_MEM;
        }
        for (uint16_t i = 0; i < src_config->ble->nu_lookup_count; i++) {
            dest_config->ble->nu_lookup[i].uuid = src_config->ble->nu_lookup[i].uuid;
            if (!src_config->ble->nu_lookup[i].name) {
                ESP_LOGE(TAG, "Endpoint name cannot be null");
                return ESP_ERR_INVALID_ARG;
            }
            dest_config->ble->nu_lookup[i].name = strdup(src_config->ble->nu_lookup[i].name);
            if (!dest_config->ble->nu_lookup[i].name) {
                ESP_LOGE(TAG, "Failed to allocate memory for endpoint name");
                return ESP_ERR_NO_MEM;
            }
            dest_config->ble->nu_lookup_count++;
        }
    }
    return ESP_OK;
}
