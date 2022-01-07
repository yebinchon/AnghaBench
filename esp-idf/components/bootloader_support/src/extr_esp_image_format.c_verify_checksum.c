
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ hash_appended; } ;
struct TYPE_5__ {int image_len; TYPE_1__ image; scalar_t__ start_addr; } ;
typedef TYPE_2__ esp_image_metadata_t ;
typedef scalar_t__ esp_err_t ;
typedef int * bootloader_sha256_handle_t ;


 scalar_t__ ESP_ERR_IMAGE_INVALID ;
 int ESP_LOGE (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ ESP_OK ;
 scalar_t__ HASH_LEN ;
 int TAG ;
 scalar_t__ bootloader_flash_read (scalar_t__,scalar_t__*,int,int) ;
 int bootloader_sha256_data (int *,scalar_t__*,int) ;

__attribute__((used)) static esp_err_t verify_checksum(bootloader_sha256_handle_t sha_handle, uint32_t checksum_word, esp_image_metadata_t *data)
{
    uint32_t unpadded_length = data->image_len;
    uint32_t length = unpadded_length + 1;
    length = (length + 15) & ~15;


    uint8_t buf[16];
    esp_err_t err = bootloader_flash_read(data->start_addr + unpadded_length, buf, length - unpadded_length, 1);
    uint8_t calc = buf[length - unpadded_length - 1];
    uint8_t checksum = (checksum_word >> 24)
                       ^ (checksum_word >> 16)
                       ^ (checksum_word >> 8)
                       ^ (checksum_word >> 0);
    if (err != ESP_OK || checksum != calc) {
        ESP_LOGE(TAG, "Checksum failed. Calculated 0x%x read 0x%x", checksum, calc);
        return ESP_ERR_IMAGE_INVALID;
    }
    if (sha_handle != ((void*)0)) {
        bootloader_sha256_data(sha_handle, buf, length - unpadded_length);
    }

    if (data->image.hash_appended) {

        length += HASH_LEN;
    }
    data->image_len = length;

    return ESP_OK;
}
