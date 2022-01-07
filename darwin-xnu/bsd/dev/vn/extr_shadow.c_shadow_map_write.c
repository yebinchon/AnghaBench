
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ file_size_blocks; scalar_t__* bands; scalar_t__ blocks_per_band; scalar_t__ next_band; scalar_t__ shadow_size_bands; int block_bitmap; } ;
typedef TYPE_1__ shadow_map_t ;
typedef int boolean_t ;
typedef scalar_t__ band_number_t ;


 int FALSE ;
 int TRUE ;
 int bitmap_set (int ,scalar_t__,scalar_t__) ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__) ;
 size_t shadow_map_block_to_band (TYPE_1__*,scalar_t__) ;
 scalar_t__ shadow_map_contiguous (TYPE_1__*,scalar_t__,scalar_t__,int ) ;

boolean_t
shadow_map_write(shadow_map_t * map, uint32_t block_offset,
   uint32_t block_count, uint32_t * incr_block_offset,
   uint32_t * incr_block_count)
{
    uint32_t band_limit;
    band_number_t mapped_band;
    boolean_t shadow_grew = FALSE;

    if (block_offset >= map->file_size_blocks
 || (block_offset + block_count) > map->file_size_blocks) {
 printf("shadow_map_write: request (%d, %d) exceeds file size %d\n",
        block_offset, block_count, map->file_size_blocks);
 *incr_block_count = 0;
    }

    band_limit = shadow_map_contiguous(map, block_offset, block_count, TRUE);
    mapped_band = map->bands[shadow_map_block_to_band(map, block_offset)];
    *incr_block_offset = mapped_band * map->blocks_per_band
 + (block_offset % map->blocks_per_band);
    *incr_block_count = band_limit - block_offset;


    bitmap_set(map->block_bitmap, block_offset, *incr_block_count);

    if (map->next_band > map->shadow_size_bands) {
 map->shadow_size_bands = map->next_band;
 shadow_grew = TRUE;
    }
    return (shadow_grew);
}
