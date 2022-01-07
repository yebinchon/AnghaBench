
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_flash_enc_mode_t ;


 int ESP_EFUSE_FLASH_CRYPT_CNT ;
 scalar_t__ ESP_FLASH_ENC_MODE_DEVELOPMENT ;
 scalar_t__ ESP_FLASH_ENC_MODE_DISABLED ;
 int esp_efuse_read_field_blob (int ,int*,int) ;
 scalar_t__ esp_get_flash_encryption_mode () ;
 int printf (char*,...) ;

__attribute__((used)) static void example_print_flash_encryption_status(void)
{
    uint32_t flash_crypt_cnt = 0;
    esp_efuse_read_field_blob(ESP_EFUSE_FLASH_CRYPT_CNT, &flash_crypt_cnt, 7);
    printf("FLASH_CRYPT_CNT eFuse value is %d\n", flash_crypt_cnt);

    esp_flash_enc_mode_t mode = esp_get_flash_encryption_mode();
    if (mode == ESP_FLASH_ENC_MODE_DISABLED) {
        printf("Flash encryption feature is disabled\n");
    } else {
        printf("Flash encryption feature is enabled in %s mode\n",
            mode == ESP_FLASH_ENC_MODE_DEVELOPMENT ? "DEVELOPMENT" : "RELEASE");
    }
}
