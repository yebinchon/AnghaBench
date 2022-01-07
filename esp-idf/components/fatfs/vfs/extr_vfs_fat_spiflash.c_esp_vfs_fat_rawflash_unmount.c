
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;
typedef int esp_err_t ;
typedef int BYTE ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_LOGE (int ,char*,char const*) ;
 int ESP_PARTITION_SUBTYPE_DATA_FAT ;
 int ESP_PARTITION_TYPE_DATA ;
 int TAG ;
 int * esp_partition_find_first (int ,int ,char const*) ;
 int esp_vfs_fat_unregister_path (char const*) ;
 int f_mount (int ,char*,int ) ;
 int ff_diskio_get_pdrv_raw (int const*) ;
 int ff_diskio_unregister (int) ;

esp_err_t esp_vfs_fat_rawflash_unmount(const char *base_path, const char* partition_label)
{
    const esp_partition_t *data_partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA,
            ESP_PARTITION_SUBTYPE_DATA_FAT, partition_label);

    if (data_partition == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to find FATFS partition (type='data', subtype='fat', partition_label='%s'). Check the partition table.", partition_label);
        return ESP_ERR_NOT_FOUND;
    }

    BYTE pdrv = ff_diskio_get_pdrv_raw(data_partition);
    if (pdrv == 0xff) {
        return ESP_ERR_INVALID_STATE;
    }
    char drv[3] = {(char)('0' + pdrv), ':', 0};

    f_mount(0, drv, 0);
    ff_diskio_unregister(pdrv);
    esp_err_t err = esp_vfs_fat_unregister_path(base_path);
    return err;
}
