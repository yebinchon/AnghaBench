
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ets_secure_boot_signature_t ;
typedef int ets_secure_boot_key_digests_t ;
typedef int esp_err_t ;


 int ESP_ERR_IMAGE_INVALID ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_OK ;
 int TAG ;
 int assert (int) ;
 int * bootloader_mmap (int,int) ;
 int bootloader_munmap (int const*) ;
 int ets_secure_boot_read_key_digests (int *) ;
 int ets_secure_boot_verify_signature (int const*,int const*,int *) ;

esp_err_t esp_secure_boot_verify_signature_block(uint32_t sig_block_flash_offs, const uint8_t *image_digest)
{
    ets_secure_boot_key_digests_t trusted_keys;

    assert(sig_block_flash_offs % 4096 == 0);

    const ets_secure_boot_signature_t *sig = bootloader_mmap(sig_block_flash_offs, sizeof(ets_secure_boot_signature_t));

    if (sig == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to mmap data at offset 0x%x", sig_block_flash_offs);
        return ESP_FAIL;
    }

    int r = ets_secure_boot_read_key_digests(&trusted_keys);
    if (r != 0) {
        ESP_LOGE(TAG, "No trusted key digests were found in efuse!");
    } else {
        ESP_LOGD(TAG, "Verifying with RSA-PSS...");

        r = ets_secure_boot_verify_signature(sig, image_digest, &trusted_keys);
    }

    bootloader_munmap(sig);

    return (r == 0) ? ESP_OK : ESP_ERR_IMAGE_INVALID;
}
