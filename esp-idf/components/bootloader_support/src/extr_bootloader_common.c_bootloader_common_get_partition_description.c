
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ offset; int size; } ;
typedef TYPE_1__ esp_partition_pos_t ;
typedef int esp_image_segment_header_t ;
typedef int esp_image_header_t ;
typedef int esp_err_t ;
struct TYPE_7__ {scalar_t__ magic_word; } ;
typedef TYPE_2__ esp_app_desc_t ;


 scalar_t__ ESP_APP_DESC_MAGIC_WORD ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,scalar_t__,int ) ;
 int ESP_OK ;
 int TAG ;
 int * bootloader_mmap (scalar_t__,int ) ;
 int bootloader_munmap (int const*) ;
 int memcpy (TYPE_2__*,int const*,int) ;

esp_err_t bootloader_common_get_partition_description(const esp_partition_pos_t *partition, esp_app_desc_t *app_desc)
{
    if (partition == ((void*)0) || app_desc == ((void*)0) || partition->offset == 0) {
        return ESP_ERR_INVALID_ARG;
    }

    const uint8_t *image = bootloader_mmap(partition->offset, partition->size);
    if (image == ((void*)0)) {
        ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", partition->offset, partition->size);
        return ESP_FAIL;
    }

    memcpy(app_desc, image + sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t), sizeof(esp_app_desc_t));
    bootloader_munmap(image);

    if (app_desc->magic_word != ESP_APP_DESC_MAGIC_WORD) {
        return ESP_ERR_NOT_FOUND;
    }

    return ESP_OK;
}
