
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int* block_bitmap; } ;
typedef TYPE_1__ shadow_map_t ;
typedef int boolean_t ;
struct TYPE_6__ {size_t byte; int bit; } ;
typedef TYPE_2__ bitmap_offset_t ;


 int FALSE ;
 int TRUE ;
 int bit (int ) ;
 TYPE_2__ bitmap_offset (int ) ;

boolean_t
shadow_map_is_written(shadow_map_t * map, uint32_t block_offset)
{
    bitmap_offset_t b;

    b = bitmap_offset(block_offset);
    return ((map->block_bitmap[b.byte] & bit(b.bit)) ? TRUE : FALSE);
}
