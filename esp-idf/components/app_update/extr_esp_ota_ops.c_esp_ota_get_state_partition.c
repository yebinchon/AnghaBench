
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int subtype; } ;
typedef TYPE_1__ esp_partition_t ;
struct TYPE_8__ {int ota_seq; scalar_t__ crc; int ota_state; } ;
typedef TYPE_2__ esp_ota_select_entry_t ;
typedef int esp_ota_img_states_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_OK ;
 int ESP_PARTITION_SUBTYPE_APP_OTA_MIN ;
 scalar_t__ bootloader_common_ota_select_crc (TYPE_2__*) ;
 int get_ota_partition_count () ;
 int is_ota_partition (TYPE_1__ const*) ;
 int * read_otadata (TYPE_2__*) ;

esp_err_t esp_ota_get_state_partition(const esp_partition_t *partition, esp_ota_img_states_t *ota_state)
{
    if (partition == ((void*)0) || ota_state == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!is_ota_partition(partition)) {
        return ESP_ERR_NOT_SUPPORTED;
    }

    esp_ota_select_entry_t otadata[2];
    int ota_app_count = get_ota_partition_count();
    if (read_otadata(otadata) == ((void*)0) || ota_app_count == 0) {
        return ESP_ERR_NOT_FOUND;
    }

    int req_ota_slot = partition->subtype - ESP_PARTITION_SUBTYPE_APP_OTA_MIN;
    bool not_found = 1;
    for (int i = 0; i < 2; ++i) {
        int ota_slot = (otadata[i].ota_seq - 1) % ota_app_count;
        if (ota_slot == req_ota_slot && otadata[i].crc == bootloader_common_ota_select_crc(&otadata[i])) {
            *ota_state = otadata[i].ota_state;
            not_found = 0;
            break;
        }
    }

    if (not_found) {
        return ESP_ERR_NOT_FOUND;
    }

    return ESP_OK;
}
