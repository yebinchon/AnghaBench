
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_5__ {int permanent; void* max_protection; void* protection; } ;


 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE ;
 int TRUE ;
 int VME_OBJECT_SET (TYPE_1__*,int ) ;
 int VME_OFFSET_SET (TYPE_1__*,scalar_t__) ;
 int VM_KERN_MEMORY_NONE ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_PAGING_NUM_PAGES ;
 void* VM_PROT_NONE ;
 int assert (int) ;
 int kernel_map ;
 int kernel_object ;
 int panic (char*) ;
 scalar_t__ vm_map_find_space (int ,scalar_t__*,int,int ,int ,int ,int ,TYPE_1__**) ;
 int vm_map_unlock (int ) ;
 int vm_object_reference (int ) ;
 scalar_t__ vm_paging_base_address ;

void
vm_paging_map_init(void)
{
 kern_return_t kr;
 vm_map_offset_t page_map_offset;
 vm_map_entry_t map_entry;

 assert(vm_paging_base_address == 0);





 page_map_offset = 0;
 kr = vm_map_find_space(kernel_map,
          &page_map_offset,
          VM_PAGING_NUM_PAGES * PAGE_SIZE,
          0,
          0,
          VM_MAP_KERNEL_FLAGS_NONE,
          VM_KERN_MEMORY_NONE,
          &map_entry);
 if (kr != KERN_SUCCESS) {
  panic("vm_paging_map_init: kernel_map full\n");
 }
 VME_OBJECT_SET(map_entry, kernel_object);
 VME_OFFSET_SET(map_entry, page_map_offset);
 map_entry->protection = VM_PROT_NONE;
 map_entry->max_protection = VM_PROT_NONE;
 map_entry->permanent = TRUE;
 vm_object_reference(kernel_object);
 vm_map_unlock(kernel_map);

 assert(vm_paging_base_address == 0);
 vm_paging_base_address = page_map_offset;
}
