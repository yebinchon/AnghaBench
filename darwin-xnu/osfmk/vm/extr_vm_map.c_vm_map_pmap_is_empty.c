
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef scalar_t__ ppnum_t ;
typedef int boolean_t ;
struct TYPE_4__ {int * pmap; } ;


 int FALSE ;
 scalar_t__ PAGE_SIZE ;
 int TRUE ;
 int kprintf (char*,TYPE_1__*,long long,long long,scalar_t__,long long) ;
 scalar_t__ pmap_find_phys (int *,scalar_t__) ;
 int pmap_is_empty (int *,scalar_t__,scalar_t__) ;

boolean_t vm_map_pmap_is_empty(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end)
{



 vm_map_offset_t offset;
 ppnum_t phys_page;

 if (map->pmap == ((void*)0)) {
  return TRUE;
 }

 for (offset = start;
      offset < end;
      offset += PAGE_SIZE) {
  phys_page = pmap_find_phys(map->pmap, offset);
  if (phys_page) {
   kprintf("vm_map_pmap_is_empty(%p,0x%llx,0x%llx): "
    "page %d at 0x%llx\n",
    map, (long long)start, (long long)end,
    phys_page, (long long)offset);
   return FALSE;
  }
 }
 return TRUE;

}
