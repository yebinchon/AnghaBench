
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
struct TYPE_4__ {scalar_t__ cur_size; } ;


 int all_zones_lock ;
 unsigned int num_zones ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 TYPE_1__* zone_array ;

zone_t
zone_find_largest(void)
{
 unsigned int i;
 unsigned int max_zones;
 zone_t the_zone;
 zone_t zone_largest;

 simple_lock(&all_zones_lock);
 max_zones = num_zones;
 simple_unlock(&all_zones_lock);

 zone_largest = &(zone_array[0]);
 for (i = 0; i < max_zones; i++) {
  the_zone = &(zone_array[i]);
  if (the_zone->cur_size > zone_largest->cur_size) {
   zone_largest = the_zone;
  }
 }
 return zone_largest;
}
