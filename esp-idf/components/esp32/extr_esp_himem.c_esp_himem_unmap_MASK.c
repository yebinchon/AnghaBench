#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* esp_himem_rangehandle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_7__ {scalar_t__ is_mapped; } ;
struct TYPE_6__ {int ram_block; scalar_t__ is_mapped; } ;
struct TYPE_5__ {int block_start; int block_ct; } ;

/* Variables and functions */
 int CACHE_BLOCKSIZE ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int VIRT_HIMEM_RANGE_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* s_ram_descriptor ; 
 TYPE_2__* s_range_descriptor ; 
 int /*<<< orphan*/  spinlock ; 

esp_err_t FUNC6(esp_himem_rangehandle_t range, void *ptr, size_t len)
{
    //Note: doesn't actually unmap, just clears cache and marks blocks as unmapped.
    //Future optimization: could actually lazy-unmap here: essentially, do nothing and only clear the cache when we re-use
    //the block for a different physical address.
    int range_offset = (uint32_t)ptr - VIRT_HIMEM_RANGE_START;
    int range_block = (range_offset / CACHE_BLOCKSIZE) - range->block_start;
    int blockcount = len / CACHE_BLOCKSIZE;
    FUNC0(range_offset % CACHE_BLOCKSIZE != 0, "range offset not block-aligned", ESP_ERR_INVALID_ARG);
    FUNC0(len % CACHE_BLOCKSIZE != 0, "map length not block-aligned", ESP_ERR_INVALID_ARG);
    FUNC0(range_block + blockcount > range->block_ct, "range out of bounds for handle", ESP_ERR_INVALID_ARG);

    FUNC3(&spinlock);
    for (int i = 0; i < blockcount; i++) {
        int ramblock = s_range_descriptor[range->block_start + i + range_block].ram_block;
        FUNC1(FUNC5(ramblock));
        s_ram_descriptor[ramblock].is_mapped = 0;
        s_range_descriptor[range->block_start + i + range_block].is_mapped = 0;
    }
    FUNC2();
    FUNC4(&spinlock);
    return ESP_OK;
}