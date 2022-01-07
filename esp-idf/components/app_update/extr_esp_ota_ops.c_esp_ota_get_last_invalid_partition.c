
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_partition_t ;
struct TYPE_4__ {int ota_seq; } ;
typedef TYPE_1__ esp_ota_select_entry_t ;


 int ESP_IMAGE_VERIFY_SILENT ;
 int ESP_LOGD (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MIN ;
 int ESP_PARTITION_TYPE_APP ;
 int TAG ;
 int * esp_partition_find_first (int ,scalar_t__,int *) ;
 int get_last_invalid_otadata (TYPE_1__*) ;
 int get_ota_partition_count () ;
 scalar_t__ image_validate (int const*,int ) ;
 int * read_otadata (TYPE_1__*) ;

const esp_partition_t* esp_ota_get_last_invalid_partition(void)
{
    esp_ota_select_entry_t otadata[2];
    if (read_otadata(otadata) == ((void*)0)) {
        return ((void*)0);
    }

    int invalid_otadata = get_last_invalid_otadata(otadata);

    int ota_app_count = get_ota_partition_count();
    if (invalid_otadata != -1 && ota_app_count != 0) {
        int ota_slot = (otadata[invalid_otadata].ota_seq - 1) % ota_app_count;
        ESP_LOGD(TAG, "Find invalid ota_%d app", ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot);

        const esp_partition_t* invalid_partition = esp_partition_find_first(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot, ((void*)0));
        if (invalid_partition != ((void*)0)) {
            if (image_validate(invalid_partition, ESP_IMAGE_VERIFY_SILENT) != ESP_OK) {
                ESP_LOGD(TAG, "Last invalid partition has corrupted app");
                return ((void*)0);
            }
        }
        return invalid_partition;
    }
    return ((void*)0);
}
