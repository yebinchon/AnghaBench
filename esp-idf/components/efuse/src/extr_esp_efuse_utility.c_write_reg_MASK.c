#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t esp_efuse_block_t ;
struct TYPE_4__ {int end; int start; } ;
struct TYPE_3__ {int start; } ;

/* Variables and functions */
 size_t EFUSE_BLK_MAX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* range_read_addr_blocks ; 
 TYPE_1__* range_write_addr_blocks ; 

__attribute__((used)) static void FUNC3(esp_efuse_block_t blk, unsigned int num_reg, uint32_t value)
{
    FUNC2(blk >= 0 && blk < EFUSE_BLK_MAX);
    unsigned int max_num_reg = (range_read_addr_blocks[blk].end - range_read_addr_blocks[blk].start) / sizeof(uint32_t);
    FUNC2(num_reg <= max_num_reg);
    uint32_t addr_wr_reg = range_write_addr_blocks[blk].start + num_reg * 4;
    uint32_t reg_to_write = FUNC0(addr_wr_reg) | value;
    // The register can be written in parts so we combine the new value with the one already available.
    FUNC1(addr_wr_reg, reg_to_write);
}