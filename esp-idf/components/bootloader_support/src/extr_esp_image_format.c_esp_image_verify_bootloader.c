
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int image_len; } ;
typedef TYPE_1__ esp_image_metadata_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 scalar_t__ esp_image_verify_bootloader_data (TYPE_1__*) ;

esp_err_t esp_image_verify_bootloader(uint32_t *length)
{
    esp_image_metadata_t data;
    esp_err_t err = esp_image_verify_bootloader_data(&data);
    if (length != ((void*)0)) {
        *length = (err == ESP_OK) ? data.image_len : 0;
    }
    return err;
}
