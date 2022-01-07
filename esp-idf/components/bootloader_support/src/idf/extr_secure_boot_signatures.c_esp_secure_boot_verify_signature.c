
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_secure_boot_sig_block_t ;
typedef int esp_err_t ;


 int DIGEST_LEN ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,int,int) ;
 int ESP_LOGE (int ,char*,int,int) ;
 int TAG ;
 int * bootloader_mmap (int,int) ;
 int bootloader_munmap (int const*) ;
 int esp_secure_boot_verify_signature_block (int const*,int *) ;
 int mbedtls_sha256_ret (int const*,int,int *,int ) ;

esp_err_t esp_secure_boot_verify_signature(uint32_t src_addr, uint32_t length)
{
    uint8_t digest[DIGEST_LEN];
    const uint8_t *data;
    const esp_secure_boot_sig_block_t *sigblock;

    ESP_LOGD(TAG, "verifying signature src_addr 0x%x length 0x%x", src_addr, length);

    data = bootloader_mmap(src_addr, length + sizeof(esp_secure_boot_sig_block_t));
    if (data == ((void*)0)) {
        ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", src_addr, length + sizeof(esp_secure_boot_sig_block_t));
        return ESP_FAIL;
    }


    mbedtls_sha256_ret(data, length, digest, 0);


    sigblock = (const esp_secure_boot_sig_block_t *)(data + length);
    esp_err_t err = esp_secure_boot_verify_signature_block(sigblock, digest);
    bootloader_munmap(data);
    return err;
}
