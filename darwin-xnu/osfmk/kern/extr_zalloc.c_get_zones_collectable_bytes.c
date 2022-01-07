
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int mzi_collectable; } ;
typedef TYPE_1__ mach_zone_info_t ;


 scalar_t__ GET_MZI_COLLECTABLE_BYTES (int ) ;
 int all_zones_lock ;
 scalar_t__ get_zone_info (int *,int *,TYPE_1__*) ;
 scalar_t__ num_zones ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int * zone_array ;

uint64_t
get_zones_collectable_bytes(void)
{
 unsigned int i, max_zones;
 uint64_t zones_collectable_bytes = 0;
 mach_zone_info_t zi;

 simple_lock(&all_zones_lock);
 max_zones = (unsigned int)(num_zones);
 simple_unlock(&all_zones_lock);

 for (i = 0; i < max_zones; i++) {
  if (get_zone_info(&(zone_array[i]), ((void*)0), &zi)) {
   zones_collectable_bytes += GET_MZI_COLLECTABLE_BYTES(zi.mzi_collectable);
  }
 }

 return zones_collectable_bytes;
}
