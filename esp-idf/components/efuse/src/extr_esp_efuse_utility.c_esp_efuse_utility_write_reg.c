
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;
typedef int esp_efuse_block_t ;


 int ESP_ERR_EFUSE_REPEATED_PROG ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int TAG ;
 int esp_efuse_utility_read_reg (int ,unsigned int) ;
 int write_reg (int ,unsigned int,int) ;

esp_err_t esp_efuse_utility_write_reg(esp_efuse_block_t efuse_block, unsigned int num_reg, uint32_t reg_to_write)
{
    esp_err_t err = ESP_OK;
    uint32_t reg = esp_efuse_utility_read_reg(efuse_block, num_reg);
    if (reg & reg_to_write) {
        ESP_LOGE(TAG, "Repeated programming of programmed bits is strictly forbidden 0x%08x", reg & reg_to_write);
        err = ESP_ERR_EFUSE_REPEATED_PROG;
    } else {
        write_reg(efuse_block, num_reg, reg_to_write);
    }
    return err;
}
