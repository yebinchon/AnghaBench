
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_map_offset_t ;
typedef scalar_t__ ppnum_t ;
typedef TYPE_2__* pmap_t ;
typedef int boolean_t ;
struct TYPE_7__ {scalar_t__ resident_count; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;


 int FALSE ;
 scalar_t__ PAGE_SIZE_64 ;
 TYPE_2__* PMAP_NULL ;
 int TRUE ;
 int kprintf (char*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ pmap_find_phys (TYPE_2__*,scalar_t__) ;

boolean_t
pmap_is_empty(
       pmap_t pmap,
       vm_map_offset_t va_start,
       vm_map_offset_t va_end)
{
 vm_map_offset_t offset;
 ppnum_t phys_page;

 if (pmap == PMAP_NULL) {
  return TRUE;
 }
 if (pmap->stats.resident_count == 0)
  return TRUE;

 for (offset = va_start;
      offset < va_end;
      offset += PAGE_SIZE_64) {
  phys_page = pmap_find_phys(pmap, offset);
  if (phys_page) {
   kprintf("pmap_is_empty(%p,0x%llx,0x%llx): "
    "page %d at 0x%llx\n",
    pmap, va_start, va_end, phys_page, offset);
   return FALSE;
  }
 }

 return TRUE;
}
