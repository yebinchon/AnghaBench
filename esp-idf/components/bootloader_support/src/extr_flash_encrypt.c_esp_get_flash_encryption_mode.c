
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int esp_flash_enc_mode_t ;


 int ESP_EFUSE_DISABLE_DL_CACHE ;
 int ESP_EFUSE_DISABLE_DL_DECRYPT ;
 int ESP_EFUSE_DISABLE_DL_ENCRYPT ;
 int ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT ;
 int ESP_FLASH_ENC_MODE_DEVELOPMENT ;
 int ESP_FLASH_ENC_MODE_DISABLED ;
 int ESP_FLASH_ENC_MODE_RELEASE ;
 int esp_efuse_read_field_blob (int ,scalar_t__*,int) ;
 scalar_t__ esp_flash_encryption_enabled () ;

esp_flash_enc_mode_t esp_get_flash_encryption_mode(void)
{
    uint8_t efuse_flash_crypt_cnt_wr_protected = 0;
    uint8_t dis_dl_enc = 0, dis_dl_dec = 0, dis_dl_cache = 0;
    esp_flash_enc_mode_t mode = ESP_FLASH_ENC_MODE_DEVELOPMENT;

    if (esp_flash_encryption_enabled()) {

        esp_efuse_read_field_blob(ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, &efuse_flash_crypt_cnt_wr_protected, 1);
        if (efuse_flash_crypt_cnt_wr_protected) {
            esp_efuse_read_field_blob(ESP_EFUSE_DISABLE_DL_CACHE, &dis_dl_cache, 1);
            esp_efuse_read_field_blob(ESP_EFUSE_DISABLE_DL_ENCRYPT, &dis_dl_enc, 1);
            esp_efuse_read_field_blob(ESP_EFUSE_DISABLE_DL_DECRYPT, &dis_dl_dec, 1);

            if ( dis_dl_cache && dis_dl_enc && dis_dl_dec ) {
                mode = ESP_FLASH_ENC_MODE_RELEASE;
            }
        }
    } else {
        mode = ESP_FLASH_ENC_MODE_DISABLED;
    }

    return mode;
}
