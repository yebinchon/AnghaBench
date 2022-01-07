
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t esp_efuse_block_t ;
struct TYPE_2__ {int end; int start; } ;


 size_t EFUSE_BLK_MAX ;
 int REG_READ (int) ;
 int assert (int) ;
 TYPE_1__* range_read_addr_blocks ;
 int ** virt_blocks ;

uint32_t esp_efuse_utility_read_reg(esp_efuse_block_t blk, unsigned int num_reg)
{
    assert(blk >= 0 && blk < EFUSE_BLK_MAX);
    unsigned int max_num_reg = (range_read_addr_blocks[blk].end - range_read_addr_blocks[blk].start) / sizeof(uint32_t);
    assert(num_reg <= max_num_reg);
    uint32_t value;



    value = REG_READ(range_read_addr_blocks[blk].start + num_reg * 4);

    return value;
}
