
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ digest; scalar_t__ iv; } ;
typedef TYPE_1__ esp_secure_boot_iv_digest_t ;
typedef int esp_err_t ;
typedef int digest ;


 int Cache_Read_Enable (int ) ;
 int ESP_BOOTLOADER_OFFSET ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int FLASH_OFFS_SECURE_BOOT_IV_DIGEST ;
 int TAG ;
 int bootloader_flash_erase_sector (int ) ;
 int bootloader_flash_write (int ,TYPE_1__*,int,int ) ;
 int* bootloader_mmap (int ,int) ;
 int bootloader_munmap (int const*) ;
 int esp_flash_encryption_enabled () ;
 int ets_secure_boot_finish () ;
 int ets_secure_boot_hash (int const*) ;
 int ets_secure_boot_obtain () ;
 int ets_secure_boot_rd_abstract (int*) ;
 int ets_secure_boot_rd_iv (int*) ;
 int ets_secure_boot_start () ;

__attribute__((used)) static bool secure_boot_generate(uint32_t image_len){
    esp_err_t err;
    esp_secure_boot_iv_digest_t digest;
    const uint32_t *image;




    if (image_len % sizeof(digest.iv) != 0) {
        image_len = (image_len / sizeof(digest.iv) + 1) * sizeof(digest.iv);
    }
    ets_secure_boot_start();
    ets_secure_boot_rd_iv((uint32_t *)digest.iv);
    ets_secure_boot_hash(((void*)0));

    err = bootloader_flash_erase_sector(0);
    if (err != ESP_OK)
    {
        ESP_LOGE(TAG, "SPI erase failed: 0x%x", err);
        return 0;
    }


    image = bootloader_mmap(ESP_BOOTLOADER_OFFSET, image_len);
    if (!image) {
        ESP_LOGE(TAG, "bootloader_mmap(0x1000, 0x%x) failed", image_len);
        return 0;
    }
    for (int i = 0; i < image_len; i+= sizeof(digest.iv)) {
        ets_secure_boot_hash(&image[i/sizeof(uint32_t)]);
    }
    bootloader_munmap(image);

    ets_secure_boot_obtain();
    ets_secure_boot_rd_abstract((uint32_t *)digest.digest);
    ets_secure_boot_finish();

    ESP_LOGD(TAG, "write iv+digest to flash");
    err = bootloader_flash_write(FLASH_OFFS_SECURE_BOOT_IV_DIGEST, &digest,
                           sizeof(digest), esp_flash_encryption_enabled());
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "SPI write failed: 0x%x", err);
        return 0;
    }
    Cache_Read_Enable(0);
    return 1;
}
