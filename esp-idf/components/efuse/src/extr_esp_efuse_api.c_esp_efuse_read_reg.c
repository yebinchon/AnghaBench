
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_efuse_block_t ;


 int EFUSE_LOCK_ACQUIRE () ;
 int EFUSE_LOCK_RELEASE () ;
 int esp_efuse_utility_read_reg (int ,unsigned int) ;

uint32_t esp_efuse_read_reg(esp_efuse_block_t blk, unsigned int num_reg)
{
    EFUSE_LOCK_ACQUIRE();
    uint32_t ret_val = esp_efuse_utility_read_reg(blk, num_reg);
    EFUSE_LOCK_RELEASE();
    return ret_val;
}
