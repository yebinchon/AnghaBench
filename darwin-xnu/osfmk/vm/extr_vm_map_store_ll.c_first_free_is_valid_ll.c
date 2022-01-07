
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_11__ {struct TYPE_11__* vme_next; int vme_start; int vme_end; } ;
struct TYPE_10__ {TYPE_2__* first_free; } ;


 int FALSE ;
 int TRUE ;
 int VM_MAP_PAGE_MASK (TYPE_1__*) ;
 int printf (char*,TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* vm_map_to_entry (TYPE_1__*) ;
 scalar_t__ vm_map_trunc_page (int ,int ) ;

boolean_t
first_free_is_valid_ll( vm_map_t map )
{
 vm_map_entry_t entry, next;
 entry = vm_map_to_entry(map);
 next = entry->vme_next;
 while (vm_map_trunc_page(next->vme_start,
     VM_MAP_PAGE_MASK(map)) ==
        vm_map_trunc_page(entry->vme_end,
     VM_MAP_PAGE_MASK(map)) ||
        (vm_map_trunc_page(next->vme_start,
      VM_MAP_PAGE_MASK(map)) ==
  vm_map_trunc_page(entry->vme_start,
      VM_MAP_PAGE_MASK(map)) &&
  next != vm_map_to_entry(map))) {
  entry = next;
  next = entry->vme_next;
  if (entry == vm_map_to_entry(map))
   break;
 }
 if (map->first_free != entry) {
  printf("Bad first_free for map %p: %p should be %p\n",
         map, map->first_free, entry);
  return FALSE;
 }
 return TRUE;
}
