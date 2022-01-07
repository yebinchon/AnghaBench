
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ esp_flash_enc_mode_t ;


 int ESP_EARLY_LOGE (int ,char*) ;
 int ESP_EARLY_LOGI (int ,char*) ;
 int ESP_EARLY_LOGW (int ,char*) ;
 int ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT ;
 scalar_t__ ESP_FLASH_ENC_MODE_DEVELOPMENT ;
 scalar_t__ ESP_FLASH_ENC_MODE_RELEASE ;
 int TAG ;
 int esp_efuse_read_field_blob (int ,scalar_t__*,int) ;
 scalar_t__ esp_flash_encryption_enabled () ;
 int esp_flash_write_protect_crypt_cnt () ;
 scalar_t__ esp_get_flash_encryption_mode () ;
 scalar_t__ esp_secure_boot_enabled () ;

void esp_flash_encryption_init_checks()
{
    esp_flash_enc_mode_t mode;
    mode = esp_get_flash_encryption_mode();
    if (mode == ESP_FLASH_ENC_MODE_DEVELOPMENT) {




        ESP_EARLY_LOGW(TAG, "Flash encryption mode is DEVELOPMENT (not secure)");

    } else if (mode == ESP_FLASH_ENC_MODE_RELEASE) {
        ESP_EARLY_LOGI(TAG, "Flash encryption mode is RELEASE");
    }
}
