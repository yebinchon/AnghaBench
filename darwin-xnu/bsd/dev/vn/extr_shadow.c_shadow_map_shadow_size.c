
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int shadow_size_bands; int blocks_per_band; } ;
typedef TYPE_1__ shadow_map_t ;



uint32_t
shadow_map_shadow_size(shadow_map_t * map)
{
    return (map->shadow_size_bands * map->blocks_per_band);
}
