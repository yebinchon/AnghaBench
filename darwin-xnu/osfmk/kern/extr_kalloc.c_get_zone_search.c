
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zone_t ;
typedef scalar_t__ vm_size_t ;
struct TYPE_2__ {scalar_t__ kzc_size; } ;


 int MAX_K_ZONE ;
 int assert (int) ;
 int * k_zone ;
 TYPE_1__* k_zone_config ;
 scalar_t__ kalloc_max ;
 scalar_t__ kalloc_max_prerounded ;

__attribute__((used)) static __inline zone_t
get_zone_search(vm_size_t size, int zindex)
{
 assert(size < kalloc_max_prerounded);

 while ((vm_size_t)k_zone_config[zindex].kzc_size < size)
  zindex++;

 assert(zindex < MAX_K_ZONE &&
     (vm_size_t)k_zone_config[zindex].kzc_size < kalloc_max);

 return (k_zone[zindex]);
}
