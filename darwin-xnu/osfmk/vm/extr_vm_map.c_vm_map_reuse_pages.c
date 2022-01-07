
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int kern_return_t ;
struct TYPE_18__ {int reuse_pages_success; int reuse_pages_failure; } ;
struct TYPE_17__ {scalar_t__ vme_start; int is_sub_map; int vme_end; struct TYPE_17__* vme_next; } ;
struct TYPE_16__ {scalar_t__ pmap; } ;


 int KERN_INVALID_ADDRESS ;
 int KERN_SUCCESS ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int TRUE ;
 scalar_t__ VME_ALIAS (TYPE_2__*) ;
 int VME_ALIAS_SET (TYPE_2__*,int ) ;
 scalar_t__ VME_OBJECT (TYPE_2__*) ;
 scalar_t__ VME_OFFSET (TYPE_2__*) ;
 scalar_t__ VM_MEMORY_MALLOC_LARGE_REUSABLE ;
 int VM_MEMORY_MALLOC_LARGE_REUSED ;
 scalar_t__ VM_OBJECT_NULL ;
 int assert (int) ;
 scalar_t__ kernel_pmap ;
 int vm_map_entry_is_reusable (TYPE_2__*) ;
 int vm_map_lock_read (TYPE_1__*) ;
 int vm_map_range_check (TYPE_1__*,scalar_t__,scalar_t__,TYPE_2__**) ;
 TYPE_2__* vm_map_to_entry (TYPE_1__*) ;
 int vm_map_unlock_read (TYPE_1__*) ;
 int vm_object_lock (scalar_t__) ;
 int vm_object_reuse_pages (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int vm_object_unlock (scalar_t__) ;
 TYPE_3__ vm_page_stats_reusable ;

__attribute__((used)) static kern_return_t
vm_map_reuse_pages(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end)
{
 vm_map_entry_t entry;
 vm_object_t object;
 vm_object_offset_t start_offset, end_offset;






 vm_map_lock_read(map);
 assert(map->pmap != kernel_pmap);







 if (!vm_map_range_check(map, start, end, &entry)) {
  vm_map_unlock_read(map);
  vm_page_stats_reusable.reuse_pages_failure++;
  return KERN_INVALID_ADDRESS;
 }




 for (; entry != vm_map_to_entry(map) && entry->vme_start < end;
      entry = entry->vme_next) {



  if (! vm_map_entry_is_reusable(entry)) {
   vm_map_unlock_read(map);
   vm_page_stats_reusable.reuse_pages_failure++;
   return KERN_INVALID_ADDRESS;
  }






  if (entry->vme_start < start) {
   start_offset = start - entry->vme_start;
  } else {
   start_offset = 0;
  }
  end_offset = MIN(end, entry->vme_end) - entry->vme_start;
  start_offset += VME_OFFSET(entry);
  end_offset += VME_OFFSET(entry);

  assert(!entry->is_sub_map);
  object = VME_OBJECT(entry);
  if (object != VM_OBJECT_NULL) {
   vm_object_lock(object);
   vm_object_reuse_pages(object, start_offset, end_offset,
           TRUE);
   vm_object_unlock(object);
  }

  if (VME_ALIAS(entry) == VM_MEMORY_MALLOC_LARGE_REUSABLE) {
   VME_ALIAS_SET(entry, VM_MEMORY_MALLOC_LARGE_REUSED);
  }
 }

 vm_map_unlock_read(map);
 vm_page_stats_reusable.reuse_pages_success++;
 return KERN_SUCCESS;
}
