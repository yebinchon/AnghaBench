
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t esp_efuse_block_t ;
struct TYPE_4__ {int end; int start; } ;
struct TYPE_3__ {int start; } ;


 size_t EFUSE_BLK_MAX ;
 int REG_READ (int) ;
 int REG_WRITE (int,int) ;
 int assert (int) ;
 TYPE_2__* range_read_addr_blocks ;
 TYPE_1__* range_write_addr_blocks ;

__attribute__((used)) static void write_reg(esp_efuse_block_t blk, unsigned int num_reg, uint32_t value)
{
    assert(blk >= 0 && blk < EFUSE_BLK_MAX);
    unsigned int max_num_reg = (range_read_addr_blocks[blk].end - range_read_addr_blocks[blk].start) / sizeof(uint32_t);
    assert(num_reg <= max_num_reg);
    uint32_t addr_wr_reg = range_write_addr_blocks[blk].start + num_reg * 4;
    uint32_t reg_to_write = REG_READ(addr_wr_reg) | value;

    REG_WRITE(addr_wr_reg, reg_to_write);
}
