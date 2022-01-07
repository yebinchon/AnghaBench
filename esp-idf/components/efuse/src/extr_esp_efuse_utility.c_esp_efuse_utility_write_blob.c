
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_err_t ;
typedef int esp_efuse_block_t ;


 int esp_efuse_utility_write_reg (int ,unsigned int,int ) ;
 int fill_reg (int,int,int *,int*) ;

esp_err_t esp_efuse_utility_write_blob(unsigned int num_reg, esp_efuse_block_t efuse_block, int bit_start, int bit_count, void* arr_in, int* bits_counter)
{
    uint32_t reg_to_write = fill_reg(bit_start, bit_count, (uint8_t *)arr_in, bits_counter);
    return esp_efuse_utility_write_reg(efuse_block, num_reg, reg_to_write);
}
