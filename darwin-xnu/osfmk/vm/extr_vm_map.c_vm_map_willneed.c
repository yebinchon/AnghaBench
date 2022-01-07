
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_1__* vm_object_t ;
typedef scalar_t__ vm_object_size_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct vm_object_fault_info {int pmap_options; int user_tag; scalar_t__ hi_offset; scalar_t__ lo_offset; scalar_t__ cluster_size; int stealth; int behavior; int interruptible; } ;
typedef int memory_object_t ;
typedef int memory_object_fault_info_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_16__ {scalar_t__ vme_start; scalar_t__ vme_end; int protection; struct TYPE_16__* vme_next; int use_pmap; int is_sub_map; scalar_t__ iokit_acct; } ;
struct TYPE_15__ {scalar_t__ paging_offset; int pager; } ;


 scalar_t__ KERN_INVALID_ADDRESS ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_OPTIONS_ALT_ACCT ;
 int THREAD_UNINT ;
 int TRUE ;
 int VME_ALIAS (TYPE_2__*) ;
 scalar_t__ VME_OFFSET (TYPE_2__*) ;
 int VM_BEHAVIOR_SEQUENTIAL ;
 TYPE_1__* VM_OBJECT_NULL ;
 int VM_PROT_READ ;
 TYPE_1__* find_vnode_object (TYPE_2__*) ;
 scalar_t__ memory_object_data_request (int ,scalar_t__,int ,int,int ) ;
 int vm_map_lock_read (int ) ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_2__**) ;
 int vm_map_range_check (int ,scalar_t__,scalar_t__,TYPE_2__**) ;
 TYPE_2__* vm_map_to_entry (int ) ;
 int vm_map_unlock_read (int ) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_paging_begin (TYPE_1__*) ;
 int vm_object_paging_end (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;

__attribute__((used)) static kern_return_t
vm_map_willneed(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end
)
{
 vm_map_entry_t entry;
 vm_object_t object;
 memory_object_t pager;
 struct vm_object_fault_info fault_info = {};
 kern_return_t kr;
 vm_object_size_t len;
 vm_object_offset_t offset;

 fault_info.interruptible = THREAD_UNINT;
 fault_info.behavior = VM_BEHAVIOR_SEQUENTIAL;
 fault_info.stealth = TRUE;






 vm_map_lock_read(map);







 if (! vm_map_range_check(map, start, end, &entry)) {
  vm_map_unlock_read(map);
  return KERN_INVALID_ADDRESS;
 }




 for (; entry != vm_map_to_entry(map) && start < end; ) {







  offset = (start - entry->vme_start) + VME_OFFSET(entry);
  len = MIN(entry->vme_end - start, end - start);

  if ((vm_size_t) len != len) {

   len = (vm_size_t) (0 - PAGE_SIZE);
  }
  fault_info.cluster_size = (vm_size_t) len;
  fault_info.lo_offset = offset;
  fault_info.hi_offset = offset + len;
  fault_info.user_tag = VME_ALIAS(entry);
  fault_info.pmap_options = 0;
  if (entry->iokit_acct ||
      (!entry->is_sub_map && !entry->use_pmap)) {
   fault_info.pmap_options |= PMAP_OPTIONS_ALT_ACCT;
  }





  if ((entry->protection & VM_PROT_READ) == 0) {
   entry = entry->vme_next;
   start = entry->vme_start;
   continue;
  }






  if ((object = find_vnode_object(entry)) == VM_OBJECT_NULL) {
   entry = entry->vme_next;
   start = entry->vme_start;
   continue;
  }





  vm_map_unlock_read(map);

  vm_object_paging_begin(object);
  pager = object->pager;
  vm_object_unlock(object);
  kr = memory_object_data_request(
   pager,
   offset + object->paging_offset,
   0,
   VM_PROT_READ,
   (memory_object_fault_info_t)&fault_info);

  vm_object_lock(object);
  vm_object_paging_end(object);
  vm_object_unlock(object);







  if (kr != KERN_SUCCESS) {
   return KERN_SUCCESS;
  }

  start += len;
  if (start >= end) {

   return KERN_SUCCESS;
  }


  vm_map_lock_read(map);
  if (! vm_map_lookup_entry(map, start, &entry)) {



   vm_map_unlock_read(map);
   return KERN_INVALID_ADDRESS;
  }
 }

 vm_map_unlock_read(map);
 return KERN_SUCCESS;
}
