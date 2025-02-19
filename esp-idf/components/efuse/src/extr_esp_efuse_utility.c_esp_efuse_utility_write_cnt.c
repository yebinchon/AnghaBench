
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;
typedef int esp_efuse_block_t ;


 int ESP_OK ;
 int ESP_OK_EFUSE_CNT ;
 int esp_efuse_utility_read_reg (int ,unsigned int) ;
 int get_mask (int,int) ;
 int set_cnt_in_reg (int,int,int,size_t*) ;
 int write_reg (int ,unsigned int,int) ;

esp_err_t esp_efuse_utility_write_cnt(unsigned int num_reg, esp_efuse_block_t efuse_block, int bit_start, int bit_count, void* cnt, int* bits_counter)
{
    esp_err_t err = ESP_OK;
    uint32_t reg = esp_efuse_utility_read_reg(efuse_block, num_reg);
    size_t* set_bits = (size_t*)cnt;
    uint32_t mask = get_mask(bit_count, bit_start);
    uint32_t reg_masked_bits = reg & mask;
    if ((reg_masked_bits ^ mask) != 0) {
        uint32_t reg_to_write = set_cnt_in_reg(bit_start, bit_count, reg_masked_bits, set_bits);
        write_reg(efuse_block, num_reg, reg_to_write);
    }
    *bits_counter += bit_count;
    if ((*set_bits) == 0) {
        err = ESP_OK_EFUSE_CNT;
    }
    return err;
}
