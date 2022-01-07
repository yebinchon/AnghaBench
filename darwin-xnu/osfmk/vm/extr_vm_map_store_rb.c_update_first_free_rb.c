
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int vme_start; } ;
struct TYPE_10__ {scalar_t__ max_offset; scalar_t__ holelistenabled; } ;


 scalar_t__ MACH_VM_MAX_ADDRESS ;
 int VM_MAP_PAGE_MASK (TYPE_1__*) ;
 int update_holes_on_entry_creation (TYPE_1__*,TYPE_2__*) ;
 int update_holes_on_entry_deletion (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ vm_map_trunc_page (int ,int ) ;

void
update_first_free_rb(vm_map_t map, vm_map_entry_t entry, boolean_t new_entry_creation)
{

 if (map->holelistenabled) {




  vm_map_offset_t max_valid_offset = (map->max_offset > MACH_VM_MAX_ADDRESS) ? map->max_offset : MACH_VM_MAX_ADDRESS;





  if (entry == ((void*)0)) {
   return;
  }





  if (vm_map_trunc_page(entry->vme_start, VM_MAP_PAGE_MASK(map)) >= max_valid_offset) {
   return;
  }
  if (new_entry_creation) {

   update_holes_on_entry_creation(map, entry);
  } else {

   update_holes_on_entry_deletion(map, entry);
  }
 }
}
