
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int esp_partition_t ;
struct TYPE_5__ {int ota_seq; } ;
typedef TYPE_1__ esp_ota_select_entry_t ;


 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_PARTITION_SUBTYPE_APP_OTA_MIN ;
 int ESP_PARTITION_TYPE_APP ;
 int TAG ;
 int bootloader_common_get_active_otadata (TYPE_1__*) ;
 scalar_t__ bootloader_common_ota_select_invalid (TYPE_1__*) ;
 int const* esp_partition_find_first (int ,int,int *) ;
 int const* find_default_boot_partition () ;
 int get_ota_partition_count () ;
 int * read_otadata (TYPE_1__*) ;

const esp_partition_t *esp_ota_get_boot_partition(void)
{
    esp_ota_select_entry_t otadata[2];
    const esp_partition_t *otadata_partition = read_otadata(otadata);
    if (otadata_partition == ((void*)0)) {
        return ((void*)0);
    }

    int ota_app_count = get_ota_partition_count();
    ESP_LOGD(TAG, "found ota app max = %d", ota_app_count);

    if ((bootloader_common_ota_select_invalid(&otadata[0]) &&
         bootloader_common_ota_select_invalid(&otadata[1])) ||
         ota_app_count == 0) {
        ESP_LOGD(TAG, "finding factory app...");
        return find_default_boot_partition();
    } else {
        int active_otadata = bootloader_common_get_active_otadata(otadata);
        if (active_otadata != -1) {
            int ota_slot = (otadata[active_otadata].ota_seq - 1) % ota_app_count;
            ESP_LOGD(TAG, "finding ota_%d app...", ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot);
            return esp_partition_find_first(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_OTA_MIN + ota_slot, ((void*)0));
        } else {
            ESP_LOGE(TAG, "ota data invalid, no current app. Assuming factory");
            return find_default_boot_partition();
        }
    }
}
