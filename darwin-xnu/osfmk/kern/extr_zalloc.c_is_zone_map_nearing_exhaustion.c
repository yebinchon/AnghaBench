
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int boolean_t ;
struct TYPE_4__ {int size; } ;


 int FALSE ;
 int TRUE ;
 int vm_map_max (TYPE_1__*) ;
 int vm_map_min (TYPE_1__*) ;
 TYPE_1__* zone_map ;
 int zone_map_jetsam_limit ;

boolean_t is_zone_map_nearing_exhaustion(void)
{
 uint64_t size = zone_map->size;
 uint64_t capacity = vm_map_max(zone_map) - vm_map_min(zone_map);
 if (size > ((capacity * zone_map_jetsam_limit) / 100)) {
  return TRUE;
 }
 return FALSE;
}
