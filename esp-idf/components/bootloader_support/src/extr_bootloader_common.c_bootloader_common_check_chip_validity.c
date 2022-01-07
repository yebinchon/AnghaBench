
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ esp_image_type ;
struct TYPE_3__ {int min_chip_rev; int chip_id; } ;
typedef TYPE_1__ esp_image_header_t ;
typedef int esp_err_t ;
typedef int esp_chip_id_t ;


 int CONFIG_IDF_FIRMWARE_CHIP_ID ;
 int ESP_FAIL ;
 scalar_t__ ESP_IMAGE_BOOTLOADER ;
 int ESP_LOGE (int ,char*,int ,int ) ;
 int ESP_LOGI (int ,char*,int ,char*,int ) ;
 int ESP_OK ;
 int TAG ;
 int bootloader_common_get_chip_revision () ;

esp_err_t bootloader_common_check_chip_validity(const esp_image_header_t* img_hdr, esp_image_type type)
{
    esp_err_t err = ESP_OK;
    esp_chip_id_t chip_id = CONFIG_IDF_FIRMWARE_CHIP_ID;
    if (chip_id != img_hdr->chip_id) {
        ESP_LOGE(TAG, "mismatch chip ID, expected %d, found %d", chip_id, img_hdr->chip_id);
        err = ESP_FAIL;
    }
    uint8_t revision = bootloader_common_get_chip_revision();
    if (revision < img_hdr->min_chip_rev) {
        ESP_LOGE(TAG, "can't run on lower chip revision, expected %d, found %d", revision, img_hdr->min_chip_rev);
        err = ESP_FAIL;
    } else if (revision != img_hdr->min_chip_rev) {
        ESP_LOGI(TAG, "chip revision: %d, min. %s chip revision: %d", revision, type == ESP_IMAGE_BOOTLOADER ? "bootloader" : "application", img_hdr->min_chip_rev);
    }
    return err;
}
