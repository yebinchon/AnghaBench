
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef scalar_t__ vm_inherit_t ;
typedef int kern_return_t ;
struct TYPE_6__ {scalar_t__ vme_start; struct TYPE_6__* vme_next; scalar_t__ inheritance; int use_pmap; scalar_t__ is_sub_map; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ VM_INHERIT_COPY ;
 int VM_MAP_RANGE_CHECK (int ,scalar_t__,scalar_t__) ;
 int assert (int) ;
 int vm_map_clip_end (int ,TYPE_1__*,scalar_t__) ;
 int vm_map_clip_start (int ,TYPE_1__*,scalar_t__) ;
 int vm_map_lock (int ) ;
 scalar_t__ vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;
 TYPE_1__* vm_map_to_entry (int ) ;
 int vm_map_unlock (int ) ;

kern_return_t
vm_map_inherit(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end,
 vm_inherit_t new_inheritance)
{
 vm_map_entry_t entry;
 vm_map_entry_t temp_entry;

 vm_map_lock(map);

 VM_MAP_RANGE_CHECK(map, start, end);

 if (vm_map_lookup_entry(map, start, &temp_entry)) {
  entry = temp_entry;
 }
 else {
  temp_entry = temp_entry->vme_next;
  entry = temp_entry;
 }



 while ((entry != vm_map_to_entry(map)) && (entry->vme_start < end)) {
  if(entry->is_sub_map) {
   if(new_inheritance == VM_INHERIT_COPY) {
    vm_map_unlock(map);
    return(KERN_INVALID_ARGUMENT);
   }
  }

  entry = entry->vme_next;
 }

 entry = temp_entry;
 if (entry != vm_map_to_entry(map)) {

  vm_map_clip_start(map, entry, start);
 }

 while ((entry != vm_map_to_entry(map)) && (entry->vme_start < end)) {
  vm_map_clip_end(map, entry, end);
  if (entry->is_sub_map) {

   assert(!entry->use_pmap);
  }

  entry->inheritance = new_inheritance;

  entry = entry->vme_next;
 }

 vm_map_unlock(map);
 return(KERN_SUCCESS);
}
