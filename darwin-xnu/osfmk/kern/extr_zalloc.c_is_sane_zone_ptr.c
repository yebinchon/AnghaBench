
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_offset_t ;
typedef int boolean_t ;
struct TYPE_3__ {int allows_foreign; scalar_t__ collectable; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ __improbable (int) ;
 int pmap_kernel_va (int) ;
 int zone_map_max_address ;
 int zone_map_min_address ;

__attribute__((used)) static inline boolean_t
is_sane_zone_ptr(zone_t zone,
                 vm_offset_t addr,
   size_t obj_size)
{

 if (__improbable((addr & (sizeof(vm_offset_t) - 1)) != 0))
  return FALSE;


 if (__improbable(!pmap_kernel_va(addr)))
  return FALSE;






 if (zone->collectable && !zone->allows_foreign) {

  if (addr >= zone_map_min_address &&
     (addr + obj_size - 1) < zone_map_max_address )
   return TRUE;

  return FALSE;
 }

 return TRUE;
}
