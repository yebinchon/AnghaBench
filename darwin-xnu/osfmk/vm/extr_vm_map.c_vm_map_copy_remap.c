
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef void* vm_prot_t ;
typedef TYPE_2__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef int vm_map_copy_t ;
typedef int vm_inherit_t ;
struct TYPE_19__ {int use_pmap; scalar_t__ is_sub_map; int behavior; void* max_protection; void* protection; int inheritance; int vme_end; int vme_start; struct TYPE_19__* vme_next; } ;
struct TYPE_17__ {int entries_pageable; } ;
struct TYPE_18__ {TYPE_1__ hdr; } ;


 int VME_OBJECT (TYPE_3__*) ;
 int VME_SUBMAP (TYPE_3__*) ;
 int VM_BEHAVIOR_DEFAULT ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int assert (int) ;
 TYPE_3__* vm_map_copy_first_entry (int ) ;
 TYPE_3__* vm_map_copy_to_entry (int ) ;
 int vm_map_entry_copy (TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* vm_map_entry_create (TYPE_2__*,int) ;
 int vm_map_lock (int ) ;
 int vm_map_reference (int ) ;
 int vm_map_store_entry_link (TYPE_2__*,TYPE_3__*,TYPE_3__*,int ) ;
 int vm_map_unlock (int ) ;
 int vm_object_reference (int ) ;

void
vm_map_copy_remap(
 vm_map_t map,
 vm_map_entry_t where,
 vm_map_copy_t copy,
 vm_map_offset_t adjustment,
 vm_prot_t cur_prot,
 vm_prot_t max_prot,
 vm_inherit_t inheritance)
{
 vm_map_entry_t copy_entry, new_entry;

 for (copy_entry = vm_map_copy_first_entry(copy);
      copy_entry != vm_map_copy_to_entry(copy);
      copy_entry = copy_entry->vme_next) {

  new_entry = vm_map_entry_create(map,
      !map->hdr.entries_pageable);

  vm_map_entry_copy(new_entry, copy_entry);

  new_entry->vme_start += adjustment;
  new_entry->vme_end += adjustment;

  new_entry->inheritance = inheritance;
  new_entry->protection = cur_prot;
  new_entry->max_protection = max_prot;
  new_entry->behavior = VM_BEHAVIOR_DEFAULT;

  if (new_entry->is_sub_map) {
   assert(!new_entry->use_pmap);
   vm_map_lock(VME_SUBMAP(new_entry));
   vm_map_reference(VME_SUBMAP(new_entry));
   vm_map_unlock(VME_SUBMAP(new_entry));
  } else {
   vm_object_reference(VME_OBJECT(new_entry));
  }

  vm_map_store_entry_link(map, where, new_entry,
     VM_MAP_KERNEL_FLAGS_NONE);

  where = new_entry;
 }
}
