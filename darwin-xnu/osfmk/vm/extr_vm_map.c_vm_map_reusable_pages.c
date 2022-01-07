
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef TYPE_2__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef int kern_return_t ;
struct TYPE_25__ {int reusable_pages_success; int reusable_pages_shared; int reusable_shared; int reusable_pages_failure; int reusable_nonwritable; } ;
struct TYPE_24__ {scalar_t__ vme_start; int protection; int use_pmap; int is_sub_map; scalar_t__ iokit_acct; int vme_end; int used_for_jit; struct TYPE_24__* vme_next; } ;
struct TYPE_23__ {scalar_t__ pmap; } ;
struct TYPE_22__ {int ref_count; scalar_t__ copy_strategy; struct TYPE_22__* shadow; struct TYPE_22__* copy; } ;


 int KERN_INVALID_ADDRESS ;
 int KERN_PROTECTION_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ MEMORY_OBJECT_COPY_SYMMETRIC ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int TRUE ;
 scalar_t__ VME_ALIAS (TYPE_3__*) ;
 int VME_ALIAS_SET (TYPE_3__*,int ) ;
 TYPE_1__* VME_OBJECT (TYPE_3__*) ;
 scalar_t__ VME_OFFSET (TYPE_3__*) ;
 scalar_t__ VM_MEMORY_MALLOC_LARGE ;
 int VM_MEMORY_MALLOC_LARGE_REUSABLE ;
 scalar_t__ VM_MEMORY_MALLOC_LARGE_REUSED ;
 TYPE_1__* VM_OBJECT_NULL ;
 int VM_PROT_WRITE ;
 int assert (int) ;
 scalar_t__ kernel_pmap ;
 int vm_map_entry_is_reusable (TYPE_3__*) ;
 int vm_map_lock_read (TYPE_2__*) ;
 int vm_map_range_check (TYPE_2__*,scalar_t__,scalar_t__,TYPE_3__**) ;
 TYPE_3__* vm_map_to_entry (TYPE_2__*) ;
 int vm_map_unlock_read (TYPE_2__*) ;
 int vm_object_deactivate_pages (TYPE_1__*,scalar_t__,scalar_t__,int,int ,scalar_t__,scalar_t__) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;
 TYPE_4__ vm_page_stats_reusable ;

__attribute__((used)) static kern_return_t
vm_map_reusable_pages(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end)
{
 vm_map_entry_t entry;
 vm_object_t object;
 vm_object_offset_t start_offset, end_offset;
 vm_map_offset_t pmap_offset;






 vm_map_lock_read(map);
 assert(map->pmap != kernel_pmap);







 if (!vm_map_range_check(map, start, end, &entry)) {
  vm_map_unlock_read(map);
  vm_page_stats_reusable.reusable_pages_failure++;
  return KERN_INVALID_ADDRESS;
 }




 for (; entry != vm_map_to_entry(map) && entry->vme_start < end;
      entry = entry->vme_next) {
  int kill_pages = 0;




  if (! vm_map_entry_is_reusable(entry)) {
   vm_map_unlock_read(map);
   vm_page_stats_reusable.reusable_pages_failure++;
   return KERN_INVALID_ADDRESS;
  }

  if (! (entry->protection & VM_PROT_WRITE) && !entry->used_for_jit) {

   vm_map_unlock_read(map);
   vm_page_stats_reusable.reusable_nonwritable++;
   vm_page_stats_reusable.reusable_pages_failure++;
   return KERN_PROTECTION_FAILURE;
  }






  if (entry->vme_start < start) {
   start_offset = start - entry->vme_start;
   pmap_offset = start;
  } else {
   start_offset = 0;
   pmap_offset = entry->vme_start;
  }
  end_offset = MIN(end, entry->vme_end) - entry->vme_start;
  start_offset += VME_OFFSET(entry);
  end_offset += VME_OFFSET(entry);

  assert(!entry->is_sub_map);
  object = VME_OBJECT(entry);
  if (object == VM_OBJECT_NULL)
   continue;


  vm_object_lock(object);
  if (((object->ref_count == 1) ||
       (object->copy_strategy != MEMORY_OBJECT_COPY_SYMMETRIC &&
        object->copy == VM_OBJECT_NULL)) &&
      object->shadow == VM_OBJECT_NULL &&
      !(entry->iokit_acct ||
        (!entry->is_sub_map && !entry->use_pmap))) {
   if (object->ref_count != 1) {
    vm_page_stats_reusable.reusable_shared++;
   }
   kill_pages = 1;
  } else {
   kill_pages = -1;
  }
  if (kill_pages != -1) {
   vm_object_deactivate_pages(object,
         start_offset,
         end_offset - start_offset,
         kill_pages,
         TRUE ,
         map->pmap,
         pmap_offset);
  } else {
   vm_page_stats_reusable.reusable_pages_shared++;
  }
  vm_object_unlock(object);

  if (VME_ALIAS(entry) == VM_MEMORY_MALLOC_LARGE ||
      VME_ALIAS(entry) == VM_MEMORY_MALLOC_LARGE_REUSED) {
   VME_ALIAS_SET(entry, VM_MEMORY_MALLOC_LARGE_REUSABLE);
  }
 }

 vm_map_unlock_read(map);
 vm_page_stats_reusable.reusable_pages_success++;
 return KERN_SUCCESS;
}
