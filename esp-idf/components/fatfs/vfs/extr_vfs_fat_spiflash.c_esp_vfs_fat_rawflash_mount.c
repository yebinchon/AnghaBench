
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_files; } ;
typedef TYPE_1__ esp_vfs_fat_mount_config_t ;
typedef int esp_partition_t ;
typedef scalar_t__ esp_err_t ;
typedef scalar_t__ FRESULT ;
typedef int FATFS ;
typedef scalar_t__ BYTE ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NOT_FOUND ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*,scalar_t__,...) ;
 int ESP_LOGW (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int ESP_PARTITION_SUBTYPE_DATA_FAT ;
 int ESP_PARTITION_TYPE_DATA ;
 scalar_t__ FR_OK ;
 int TAG ;
 int * esp_partition_find_first (int ,int ,char const*) ;
 scalar_t__ esp_vfs_fat_register (char const*,char*,int ,int **) ;
 int esp_vfs_fat_unregister_path (char const*) ;
 scalar_t__ f_mount (int *,char*,int) ;
 scalar_t__ ff_diskio_get_drive (scalar_t__*) ;
 scalar_t__ ff_diskio_register_raw_partition (scalar_t__,int const*) ;
 int ff_diskio_unregister (scalar_t__) ;

esp_err_t esp_vfs_fat_rawflash_mount(const char* base_path,
    const char* partition_label,
    const esp_vfs_fat_mount_config_t* mount_config)
{
    esp_err_t result = ESP_OK;

    const esp_partition_t *data_partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA,
            ESP_PARTITION_SUBTYPE_DATA_FAT, partition_label);
    if (data_partition == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to find FATFS partition (type='data', subtype='fat', partition_label='%s'). Check the partition table.", partition_label);
        return ESP_ERR_NOT_FOUND;
    }


    BYTE pdrv = 0xFF;
    if (ff_diskio_get_drive(&pdrv) != ESP_OK) {
        ESP_LOGD(TAG, "the maximum count of volumes is already mounted");
        return ESP_ERR_NO_MEM;
    }
    ESP_LOGD(TAG, "using pdrv=%i", pdrv);
    char drv[3] = {(char)('0' + pdrv), ':', 0};

    result = ff_diskio_register_raw_partition(pdrv, data_partition);
    if (result != ESP_OK) {
        ESP_LOGE(TAG, "ff_diskio_register_raw_partition failed pdrv=%i, error - 0x(%x)", pdrv, result);
        goto fail;
    }

    FATFS *fs;
    result = esp_vfs_fat_register(base_path, drv, mount_config->max_files, &fs);
    if (result == ESP_ERR_INVALID_STATE) {

    } else if (result != ESP_OK) {
        ESP_LOGD(TAG, "esp_vfs_fat_register failed 0x(%x)", result);
        goto fail;
    }


    FRESULT fresult = f_mount(fs, drv, 1);
    if (fresult != FR_OK) {
        ESP_LOGW(TAG, "f_mount failed (%d)", fresult);
        result = ESP_FAIL;
        goto fail;
    }
    return ESP_OK;

fail:
    esp_vfs_fat_unregister_path(base_path);
    ff_diskio_unregister(pdrv);
    return result;
}
