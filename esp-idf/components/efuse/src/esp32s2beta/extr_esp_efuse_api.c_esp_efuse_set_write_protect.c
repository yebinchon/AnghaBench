
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef scalar_t__ esp_efuse_block_t ;


 scalar_t__ EFUSE_BLK1 ;
 scalar_t__ EFUSE_BLK10 ;
 scalar_t__ EFUSE_BLK2 ;
 scalar_t__ EFUSE_BLK3 ;
 scalar_t__ EFUSE_BLK4 ;
 scalar_t__ EFUSE_BLK5 ;
 scalar_t__ EFUSE_BLK6 ;
 scalar_t__ EFUSE_BLK7 ;
 scalar_t__ EFUSE_BLK8 ;
 scalar_t__ EFUSE_BLK9 ;
 int ESP_EFUSE_WR_DIS_BLK1 ;
 int ESP_EFUSE_WR_DIS_KEY0 ;
 int ESP_EFUSE_WR_DIS_KEY1 ;
 int ESP_EFUSE_WR_DIS_KEY2 ;
 int ESP_EFUSE_WR_DIS_KEY3 ;
 int ESP_EFUSE_WR_DIS_KEY4 ;
 int ESP_EFUSE_WR_DIS_KEY5 ;
 int ESP_EFUSE_WR_DIS_SYS_DATA_PART1 ;
 int ESP_EFUSE_WR_DIS_SYS_DATA_PART2 ;
 int ESP_EFUSE_WR_DIS_USER_DATA ;
 int ESP_ERR_NOT_SUPPORTED ;
 int esp_efuse_write_field_cnt (int ,int) ;

esp_err_t esp_efuse_set_write_protect(esp_efuse_block_t blk)
{
    if (blk == EFUSE_BLK1) {
       return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_BLK1, 1);
    } else if (blk == EFUSE_BLK2) {
       return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_SYS_DATA_PART1, 1);
    } else if (blk == EFUSE_BLK3) {
       return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_USER_DATA, 1);
    } else if (blk == EFUSE_BLK4) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_KEY0, 1);
    } else if (blk == EFUSE_BLK5) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_KEY1, 1);
    } else if (blk == EFUSE_BLK6) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_KEY2, 1);
    } else if (blk == EFUSE_BLK7) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_KEY3, 1);
    } else if (blk == EFUSE_BLK8) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_KEY4, 1);
    } else if (blk == EFUSE_BLK9) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_KEY5, 1);
    } else if (blk == EFUSE_BLK10) {
        return esp_efuse_write_field_cnt(ESP_EFUSE_WR_DIS_SYS_DATA_PART2, 1);
    }
    return ESP_ERR_NOT_SUPPORTED;
}
