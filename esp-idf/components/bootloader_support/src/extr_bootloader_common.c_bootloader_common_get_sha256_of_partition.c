
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int size; int offset; } ;
typedef TYPE_2__ esp_partition_pos_t ;
struct TYPE_6__ {scalar_t__ hash_appended; } ;
struct TYPE_8__ {int image_len; int image_digest; TYPE_1__ image; } ;
typedef TYPE_3__ esp_image_metadata_t ;
typedef scalar_t__ esp_err_t ;
typedef int * bootloader_sha256_handle_t ;


 scalar_t__ ESP_ERR_IMAGE_INVALID ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_IMAGE_VERIFY_SILENT ;
 int ESP_LOGE (int ,char*,int ,int ) ;
 scalar_t__ ESP_OK ;
 int ESP_PARTITION_HASH_LEN ;
 int PART_TYPE_APP ;
 int TAG ;
 void* bootloader_mmap (int ,int ) ;
 int bootloader_munmap (void const*) ;
 int bootloader_sha256_data (int *,void const*,int ) ;
 int bootloader_sha256_finish (int *,int *) ;
 int * bootloader_sha256_start () ;
 scalar_t__ esp_image_verify (int ,TYPE_2__ const*,TYPE_3__*) ;
 int memcpy (int *,int ,int ) ;

esp_err_t bootloader_common_get_sha256_of_partition (uint32_t address, uint32_t size, int type, uint8_t *out_sha_256)
{
    if (out_sha_256 == ((void*)0) || size == 0) {
        return ESP_ERR_INVALID_ARG;
    }

    if (type == PART_TYPE_APP) {
        const esp_partition_pos_t partition_pos = {
            .offset = address,
            .size = size,
        };
        esp_image_metadata_t data;


        if (esp_image_verify(ESP_IMAGE_VERIFY_SILENT, &partition_pos, &data) != ESP_OK) {
            return ESP_ERR_IMAGE_INVALID;
        }
        if (data.image.hash_appended) {
            memcpy(out_sha_256, data.image_digest, ESP_PARTITION_HASH_LEN);
            return ESP_OK;
        }

        size = data.image_len;
    }

    const void *partition_bin = bootloader_mmap(address, size);
    if (partition_bin == ((void*)0)) {
        ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", address, size);
        return ESP_FAIL;
    }
    bootloader_sha256_handle_t sha_handle = bootloader_sha256_start();
    if (sha_handle == ((void*)0)) {
        bootloader_munmap(partition_bin);
        return ESP_ERR_NO_MEM;
    }
    bootloader_sha256_data(sha_handle, partition_bin, size);
    bootloader_sha256_finish(sha_handle, out_sha_256);

    bootloader_munmap(partition_bin);

    return ESP_OK;
}
