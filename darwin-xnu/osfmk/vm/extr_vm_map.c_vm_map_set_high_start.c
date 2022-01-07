
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int vm_map_offset_t ;
struct TYPE_3__ {int vmmap_high_start; } ;



void
vm_map_set_high_start(
 vm_map_t map,
 vm_map_offset_t high_start)
{
 map->vmmap_high_start = high_start;
}
