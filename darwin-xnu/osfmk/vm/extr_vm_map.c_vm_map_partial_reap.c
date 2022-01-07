
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_20__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_2__* vm_map_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef int kern_return_t ;
struct TYPE_25__ {int vme_end; int vme_start; int is_sub_map; struct TYPE_25__* vme_next; } ;
struct TYPE_22__ {int entries_pageable; } ;
struct TYPE_24__ {TYPE_1__ hdr; int max_offset; int min_offset; } ;
struct TYPE_23__ {scalar_t__ internal; int ref_count; int pager; scalar_t__ resident_page_count; } ;


 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int PMAP_NULL ;
 scalar_t__ TRUE ;
 TYPE_20__* VME_OBJECT (TYPE_3__*) ;
 TYPE_3__* VM_MAP_ENTRY_NULL ;
 TYPE_2__* VM_MAP_NULL ;
 int VM_MAP_PAGE_SHIFT (TYPE_2__*) ;
 int VM_MAP_REMOVE_NO_PMAP_CLEANUP ;
 int VM_MAP_REMOVE_SAVE_ENTRIES ;
 scalar_t__ vm_compressor_pager_get_count (int ) ;
 TYPE_2__* vm_map_create (int ,int ,int ,int ) ;
 int vm_map_delete (TYPE_2__*,int ,int ,int ,TYPE_2__*) ;
 int vm_map_destroy (TYPE_2__*,int ) ;
 int vm_map_disable_hole_optimization (TYPE_2__*) ;
 TYPE_3__* vm_map_first_entry (TYPE_2__*) ;
 int vm_map_lock (TYPE_2__*) ;
 int vm_map_set_page_shift (TYPE_2__*,int ) ;
 TYPE_3__* vm_map_to_entry (TYPE_2__*) ;
 int vm_map_unlock (TYPE_2__*) ;

kern_return_t vm_map_partial_reap(vm_map_t map, unsigned int *reclaimed_resident, unsigned int *reclaimed_compressed)
{
 vm_map_entry_t entry = VM_MAP_ENTRY_NULL;
 vm_map_entry_t next_entry;
 kern_return_t kr = KERN_SUCCESS;
 vm_map_t zap_map;

 vm_map_lock(map);





 zap_map = vm_map_create(PMAP_NULL,
    map->min_offset,
    map->max_offset,
    map->hdr.entries_pageable);

 if (zap_map == VM_MAP_NULL) {
  return KERN_RESOURCE_SHORTAGE;
 }

 vm_map_set_page_shift(zap_map,
         VM_MAP_PAGE_SHIFT(map));
 vm_map_disable_hole_optimization(zap_map);

 for (entry = vm_map_first_entry(map);
      entry != vm_map_to_entry(map);
      entry = next_entry) {
  next_entry = entry->vme_next;

  if (VME_OBJECT(entry) &&
      !entry->is_sub_map &&
      (VME_OBJECT(entry)->internal == TRUE) &&
      (VME_OBJECT(entry)->ref_count == 1)) {

   *reclaimed_resident += VME_OBJECT(entry)->resident_page_count;
   *reclaimed_compressed += vm_compressor_pager_get_count(VME_OBJECT(entry)->pager);

   (void)vm_map_delete(map,
         entry->vme_start,
         entry->vme_end,
         VM_MAP_REMOVE_SAVE_ENTRIES,
         zap_map);
  }
 }

 vm_map_unlock(map);





        if (zap_map != VM_MAP_NULL) {
                vm_map_destroy(zap_map, VM_MAP_REMOVE_NO_PMAP_CLEANUP);
                zap_map = VM_MAP_NULL;
        }

 return kr;
}
