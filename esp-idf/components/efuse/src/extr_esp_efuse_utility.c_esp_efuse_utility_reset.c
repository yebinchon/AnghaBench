
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int COUNT_EFUSE_BLOCKS ;
 int REG_WRITE (scalar_t__,int ) ;
 int esp_efuse_utility_clear_program_registers () ;
 TYPE_1__* range_write_addr_blocks ;

void esp_efuse_utility_reset(void)
{
    esp_efuse_utility_clear_program_registers();
    for (int num_block = 0; num_block < COUNT_EFUSE_BLOCKS; num_block++) {
        for (uint32_t addr_wr_block = range_write_addr_blocks[num_block].start; addr_wr_block <= range_write_addr_blocks[num_block].end; addr_wr_block += 4) {
            REG_WRITE(addr_wr_block, 0);
        }
    }
}
