
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT ;
 int esp_efuse_read_field_blob (int ,scalar_t__*,int) ;
 int esp_efuse_write_field_cnt (int ,int) ;

void esp_flash_write_protect_crypt_cnt(void)
{
    uint8_t flash_crypt_cnt_wr_dis = 0;
    esp_efuse_read_field_blob(ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, &flash_crypt_cnt_wr_dis, 1);
    if (!flash_crypt_cnt_wr_dis) {
        esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_FLASH_CRYPT_CNT, 1);
    }
}
