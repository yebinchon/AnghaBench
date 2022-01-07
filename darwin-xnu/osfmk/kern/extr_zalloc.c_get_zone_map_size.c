
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ size; } ;


 scalar_t__ vm_map_max (TYPE_1__*) ;
 scalar_t__ vm_map_min (TYPE_1__*) ;
 TYPE_1__* zone_map ;

void get_zone_map_size(uint64_t *current_size, uint64_t *capacity)
{
 *current_size = zone_map->size;
 *capacity = vm_map_max(zone_map) - vm_map_min(zone_map);
}
