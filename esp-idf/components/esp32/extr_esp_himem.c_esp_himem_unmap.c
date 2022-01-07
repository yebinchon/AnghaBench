
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* esp_himem_rangehandle_t ;
typedef int esp_err_t ;
struct TYPE_7__ {scalar_t__ is_mapped; } ;
struct TYPE_6__ {int ram_block; scalar_t__ is_mapped; } ;
struct TYPE_5__ {int block_start; int block_ct; } ;


 int CACHE_BLOCKSIZE ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int HIMEM_CHECK (int,char*,int ) ;
 int VIRT_HIMEM_RANGE_START ;
 int assert (int ) ;
 int esp_spiram_writeback_cache () ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int ramblock_idx_valid (int) ;
 TYPE_3__* s_ram_descriptor ;
 TYPE_2__* s_range_descriptor ;
 int spinlock ;

esp_err_t esp_himem_unmap(esp_himem_rangehandle_t range, void *ptr, size_t len)
{



    int range_offset = (uint32_t)ptr - VIRT_HIMEM_RANGE_START;
    int range_block = (range_offset / CACHE_BLOCKSIZE) - range->block_start;
    int blockcount = len / CACHE_BLOCKSIZE;
    HIMEM_CHECK(range_offset % CACHE_BLOCKSIZE != 0, "range offset not block-aligned", ESP_ERR_INVALID_ARG);
    HIMEM_CHECK(len % CACHE_BLOCKSIZE != 0, "map length not block-aligned", ESP_ERR_INVALID_ARG);
    HIMEM_CHECK(range_block + blockcount > range->block_ct, "range out of bounds for handle", ESP_ERR_INVALID_ARG);

    portENTER_CRITICAL(&spinlock);
    for (int i = 0; i < blockcount; i++) {
        int ramblock = s_range_descriptor[range->block_start + i + range_block].ram_block;
        assert(ramblock_idx_valid(ramblock));
        s_ram_descriptor[ramblock].is_mapped = 0;
        s_range_descriptor[range->block_start + i + range_block].is_mapped = 0;
    }
    esp_spiram_writeback_cache();
    portEXIT_CRITICAL(&spinlock);
    return ESP_OK;
}
