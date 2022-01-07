
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_files; int format_if_mount_failed; int allocation_unit_size; } ;
typedef TYPE_1__ esp_vfs_fat_mount_config_t ;
typedef scalar_t__ esp_err_t ;


 int CONFIG_WL_SECTOR_SIZE ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int base_path ;
 int esp_err_to_name (scalar_t__) ;
 scalar_t__ esp_vfs_fat_spiflash_mount (int ,char const*,TYPE_1__ const*,int *) ;
 int s_wl_handle ;

__attribute__((used)) static bool example_mount_fatfs(const char* partition_label)
{
    ESP_LOGI(TAG, "Mounting FAT filesystem");
    const esp_vfs_fat_mount_config_t mount_config = {
            .max_files = 4,
            .format_if_mount_failed = 1,
            .allocation_unit_size = CONFIG_WL_SECTOR_SIZE
    };
    esp_err_t err = esp_vfs_fat_spiflash_mount(base_path, partition_label, &mount_config, &s_wl_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to mount FATFS (%s)", esp_err_to_name(err));
        return 0;
    }
    return 1;
}
