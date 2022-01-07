
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_BOOTLOADER_OFFSET ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ esp_flash_encrypt_region (int ,int ) ;
 scalar_t__ esp_image_verify_bootloader (int *) ;
 scalar_t__ esp_secure_boot_enabled () ;

__attribute__((used)) static esp_err_t encrypt_bootloader(void)
{
    esp_err_t err;
    uint32_t image_length;

    if (esp_image_verify_bootloader(&image_length) == ESP_OK) {
        ESP_LOGD(TAG, "bootloader is plaintext. Encrypting...");
        err = esp_flash_encrypt_region(ESP_BOOTLOADER_OFFSET, image_length);
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "Failed to encrypt bootloader in place: 0x%x", err);
            return err;
        }

        if (esp_secure_boot_enabled()) {

        }
    }
    else {
        ESP_LOGW(TAG, "no valid bootloader was found");
    }

    return ESP_OK;
}
