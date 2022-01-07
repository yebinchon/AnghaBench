
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ offset; } ;
typedef TYPE_1__ esp_partition_pos_t ;
typedef int esp_image_metadata_t ;
typedef int esp_err_t ;


 scalar_t__ ESP_BOOTLOADER_OFFSET ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_IMAGE_VERIFY ;
 scalar_t__ ESP_PARTITION_TABLE_OFFSET ;
 int esp_image_verify (int ,TYPE_1__ const*,int *) ;

esp_err_t esp_image_verify_bootloader_data(esp_image_metadata_t *data)
{
    if (data == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    const esp_partition_pos_t bootloader_part = {
        .offset = ESP_BOOTLOADER_OFFSET,
        .size = ESP_PARTITION_TABLE_OFFSET - ESP_BOOTLOADER_OFFSET,
    };
    return esp_image_verify(ESP_IMAGE_VERIFY,
                            &bootloader_part,
                            data);
}
