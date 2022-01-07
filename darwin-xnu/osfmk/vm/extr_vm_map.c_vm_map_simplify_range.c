
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
struct TYPE_6__ {scalar_t__ vme_start; struct TYPE_6__* vme_next; } ;


 int VM_MAP_PAGE_MASK (int ) ;
 TYPE_1__* vm_map_first_entry (int ) ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 int vm_map_simplify_entry (int ,TYPE_1__*) ;
 TYPE_1__* vm_map_to_entry (int ) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,int ) ;

__attribute__((used)) static void
vm_map_simplify_range(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end)
{
 vm_map_entry_t entry;





 if (start >= end) {

  return;
 }

 start = vm_map_trunc_page(start,
      VM_MAP_PAGE_MASK(map));
 end = vm_map_round_page(end,
    VM_MAP_PAGE_MASK(map));

 if (!vm_map_lookup_entry(map, start, &entry)) {

  if (entry == vm_map_to_entry(map)) {

   entry = vm_map_first_entry(map);
  } else {

   entry = entry->vme_next;
  }
 }

 while (entry != vm_map_to_entry(map) &&
        entry->vme_start <= end) {

  vm_map_simplify_entry(map, entry);
  entry = entry->vme_next;
 }
}
