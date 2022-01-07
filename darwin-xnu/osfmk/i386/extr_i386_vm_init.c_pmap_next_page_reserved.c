
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ ppnum_t ;
struct TYPE_3__ {scalar_t__ alloc_up; scalar_t__ alloc_down; int attribute; int type; int end; int base; } ;
typedef TYPE_1__ pmap_memory_region_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int avail_remaining ;
 int kprintf (char*,size_t,int ,int ,int ,int ) ;
 scalar_t__ lowest_lo ;
 scalar_t__ max_ppnum ;
 size_t pmap_last_reserved_range_index ;
 TYPE_1__* pmap_memory_regions ;
 int pmap_reserved_pages_allocated ;
 size_t* pmap_reserved_range_indices ;
 scalar_t__ pmap_reserved_ranges ;

boolean_t
pmap_next_page_reserved(ppnum_t *pn) {
 if (pmap_reserved_ranges) {
  uint32_t n;
  pmap_memory_region_t *region;
  for (n = 0; n < pmap_last_reserved_range_index; n++) {
   uint32_t reserved_index = pmap_reserved_range_indices[n];
   region = &pmap_memory_regions[reserved_index];
   if (region->alloc_up <= region->alloc_down) {
    *pn = region->alloc_up++;
    avail_remaining--;

    if (*pn > max_ppnum)
     max_ppnum = *pn;

    if (lowest_lo == 0 || *pn < lowest_lo)
     lowest_lo = *pn;

    pmap_reserved_pages_allocated++;





    return TRUE;
   }
  }
 }
 return FALSE;
}
