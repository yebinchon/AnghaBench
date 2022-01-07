
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bands; struct TYPE_4__* block_bitmap; } ;
typedef TYPE_1__ shadow_map_t ;


 int my_free (TYPE_1__*) ;

void
shadow_map_free(shadow_map_t * map)
{
    if (map->block_bitmap)
 my_free(map->block_bitmap);
    if (map->bands)
 my_free(map->bands);
    map->block_bitmap = ((void*)0);
    map->bands = ((void*)0);
    my_free(map);
    return;
}
