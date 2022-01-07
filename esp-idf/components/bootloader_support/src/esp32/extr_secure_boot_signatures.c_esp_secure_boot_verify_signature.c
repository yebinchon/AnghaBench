
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
typedef int esp_secure_boot_sig_block_t ;
typedef int esp_err_t ;
typedef int bootloader_sha256_handle_t ;


 int DIGEST_LEN ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,scalar_t__,...) ;
 int ESP_LOGE (int ,char*,scalar_t__,int) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ MMAP_ALIGNED_MASK ;
 scalar_t__ SPI_FLASH_MMU_PAGE_SIZE ;
 int TAG ;
 scalar_t__ bootloader_mmap (scalar_t__,int) ;
 scalar_t__ bootloader_mmap_get_free_pages () ;
 int bootloader_munmap (int const*) ;
 int bootloader_sha256_data (int ,int const*,scalar_t__) ;
 int bootloader_sha256_finish (int ,int *) ;
 int bootloader_sha256_start () ;
 int esp_secure_boot_verify_signature_block (int const*,int *) ;

esp_err_t esp_secure_boot_verify_signature(uint32_t src_addr, uint32_t length)
{
    uint8_t digest[DIGEST_LEN];
    const uint8_t *data;
    const esp_secure_boot_sig_block_t *sigblock;

    ESP_LOGD(TAG, "verifying signature src_addr 0x%x length 0x%x", src_addr, length);

    bootloader_sha256_handle_t handle = bootloader_sha256_start();

    uint32_t free_page_count = bootloader_mmap_get_free_pages();
    ESP_LOGD(TAG, "free data page_count 0x%08x", free_page_count);

    int32_t data_len_remain = length;
    uint32_t data_addr = src_addr;
    while (data_len_remain > 0) {
        uint32_t offset_page = ((data_addr & MMAP_ALIGNED_MASK) != 0) ? 1 : 0;

        uint32_t data_len = MIN(data_len_remain, ((free_page_count - offset_page) * SPI_FLASH_MMU_PAGE_SIZE));
        data = (const uint8_t *) bootloader_mmap(data_addr, data_len);
        if(!data) {
            ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", data_addr, data_len);
            bootloader_sha256_finish(handle, ((void*)0));
            return ESP_FAIL;
        }
        bootloader_sha256_data(handle, data, data_len);
        bootloader_munmap(data);

        data_addr += data_len;
        data_len_remain -= data_len;
    }


    bootloader_sha256_finish(handle, digest);


    sigblock = (const esp_secure_boot_sig_block_t *) bootloader_mmap(src_addr + length, sizeof(esp_secure_boot_sig_block_t));
    if(!sigblock) {
        ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", src_addr + length, sizeof(esp_secure_boot_sig_block_t));
        return ESP_FAIL;
    }

    esp_err_t err = esp_secure_boot_verify_signature_block(sigblock, digest);

    bootloader_munmap(sigblock);

    return err;
}
