
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_3__ {int offset; int size; } ;
typedef TYPE_1__ esp_partition_pos_t ;
typedef int esp_ota_select_entry_t ;
typedef int esp_err_t ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*,int,int) ;
 int ESP_OK ;
 int SPI_SEC_SIZE ;
 int TAG ;
 int * bootloader_mmap (int,int) ;
 int bootloader_munmap (int const*) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static esp_err_t read_otadata(const esp_partition_pos_t *ota_info, esp_ota_select_entry_t *two_otadata)
{
    const esp_ota_select_entry_t *ota_select_map;
    if (ota_info->offset == 0) {
        return ESP_ERR_NOT_FOUND;
    }


    if (ota_info->size < 2 * SPI_SEC_SIZE) {
        ESP_LOGE(TAG, "ota_info partition size %d is too small (minimum %d bytes)", ota_info->size, sizeof(esp_ota_select_entry_t));
        return ESP_FAIL;
    }

    ESP_LOGD(TAG, "OTA data offset 0x%x", ota_info->offset);
    ota_select_map = bootloader_mmap(ota_info->offset, ota_info->size);
    if (!ota_select_map) {
        ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", ota_info->offset, ota_info->size);
        return ESP_FAIL;
    }

    memcpy(&two_otadata[0], ota_select_map, sizeof(esp_ota_select_entry_t));
    memcpy(&two_otadata[1], (uint8_t *)ota_select_map + SPI_SEC_SIZE, sizeof(esp_ota_select_entry_t));
    bootloader_munmap(ota_select_map);

    return ESP_OK;
}
