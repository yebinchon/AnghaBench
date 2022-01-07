
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t esp_efuse_block_t ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 scalar_t__ REG_READ (scalar_t__) ;
 int REG_WRITE (scalar_t__,int ) ;
 TYPE_1__* range_write_addr_blocks ;

__attribute__((used)) static bool read_w_data_and_check_fill(esp_efuse_block_t num_block, uint32_t *buf_w_data)
{
    bool blk_is_filled = 0;
    int i = 0;
    for (uint32_t addr_wr_block = range_write_addr_blocks[num_block].start; addr_wr_block <= range_write_addr_blocks[num_block].end; addr_wr_block += 4, ++i) {
        buf_w_data[i] = REG_READ(addr_wr_block);
        if (buf_w_data[i] != 0) {
            REG_WRITE(addr_wr_block, 0);
            blk_is_filled = 1;
        }
    }
    return blk_is_filled;
}
