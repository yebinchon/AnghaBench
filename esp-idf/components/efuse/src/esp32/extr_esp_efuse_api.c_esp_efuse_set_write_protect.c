
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef scalar_t__ esp_efuse_block_t ;


 scalar_t__ EFUSE_BLK1 ;
 scalar_t__ EFUSE_BLK2 ;
 scalar_t__ EFUSE_BLK3 ;
 int ESP_EFUSE_WR_DIS_BLK1 ;
 int ESP_EFUSE_WR_DIS_BLK2 ;
 int ESP_EFUSE_WR_DIS_BLK3 ;
 int ESP_ERR_NOT_SUPPORTED ;
 int esp_efuse_write_field_cnt (int ,int) ;

esp_err_t esp_efuse_set_write_protect(esp_efuse_block_t blk)
{
    if (blk == EFUSE_BLK1) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_BLK1, 1);
    } else if (blk == EFUSE_BLK2) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_BLK2, 1);
    } else if (blk == EFUSE_BLK3) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_BLK3, 1);
    }
    return ESP_ERR_NOT_SUPPORTED;
}
