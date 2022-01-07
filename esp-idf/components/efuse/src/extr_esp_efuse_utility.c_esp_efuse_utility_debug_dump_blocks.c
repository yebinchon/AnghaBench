
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int COUNT_EFUSE_BLOCKS ;
 int REG_READ (scalar_t__) ;
 int printf (char*,...) ;
 TYPE_1__* range_read_addr_blocks ;
 int** virt_blocks ;

void esp_efuse_utility_debug_dump_blocks(void)
{
    printf("EFUSE_BLKx:\n");
    for (int num_block = 0; num_block < COUNT_EFUSE_BLOCKS; num_block++) {
        printf("%d) ", num_block);
        for (uint32_t addr_rd_block = range_read_addr_blocks[num_block].start; addr_rd_block <= range_read_addr_blocks[num_block].end; addr_rd_block += 4) {
            printf("0x%08x ", REG_READ(addr_rd_block));
        }
        printf("\n");
    }

    printf("\n");
}
