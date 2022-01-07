
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int blocks_per_band; } ;
typedef TYPE_1__ shadow_map_t ;
typedef int band_number_t ;



__attribute__((used)) static __inline__ band_number_t
shadow_map_block_to_band(shadow_map_t * map, uint32_t block)
{
    return (block / map->blocks_per_band);
}
