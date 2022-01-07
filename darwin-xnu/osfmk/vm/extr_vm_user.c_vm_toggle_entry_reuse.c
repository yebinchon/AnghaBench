
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_12__ {int vme_end; } ;
struct TYPE_11__ {int disable_vmentry_reuse; TYPE_2__* first_free; int highest_entry_end; int is_nested_map; } ;


 int FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int TRUE ;
 int VM_TOGGLE_CLEAR ;
 int VM_TOGGLE_GETVALUE ;
 int VM_TOGGLE_SET ;
 int __IGNORE_WCASTALIGN (TYPE_2__*) ;
 int assert (int) ;
 TYPE_1__* current_map () ;
 int vm_map_disable_hole_optimization (TYPE_1__*) ;
 int vm_map_lock (TYPE_1__*) ;
 int vm_map_min (TYPE_1__*) ;
 TYPE_2__* vm_map_to_entry (TYPE_1__*) ;
 int vm_map_unlock (TYPE_1__*) ;

int
vm_toggle_entry_reuse(int toggle, int *old_value)
{
 vm_map_t map = current_map();

 assert(!map->is_nested_map);
 if(toggle == VM_TOGGLE_GETVALUE && old_value != ((void*)0)){
  *old_value = map->disable_vmentry_reuse;
 } else if(toggle == VM_TOGGLE_SET){
  vm_map_entry_t map_to_entry;

  vm_map_lock(map);
  vm_map_disable_hole_optimization(map);
  map->disable_vmentry_reuse = TRUE;
  __IGNORE_WCASTALIGN(map_to_entry = vm_map_to_entry(map));
  if (map->first_free == map_to_entry) {
   map->highest_entry_end = vm_map_min(map);
  } else {
   map->highest_entry_end = map->first_free->vme_end;
  }
  vm_map_unlock(map);
 } else if (toggle == VM_TOGGLE_CLEAR){
  vm_map_lock(map);
  map->disable_vmentry_reuse = FALSE;
  vm_map_unlock(map);
 } else
  return KERN_INVALID_ARGUMENT;

 return KERN_SUCCESS;
}
