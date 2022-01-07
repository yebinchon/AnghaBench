
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_named_entry_t ;
typedef scalar_t__ vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_4__ {scalar_t__ map; } ;
struct TYPE_5__ {scalar_t__ size; int protection; scalar_t__ offset; void* is_sub_map; void* internal; TYPE_1__ backing; } ;


 scalar_t__ KERN_SUCCESS ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 void* TRUE ;
 scalar_t__ VM_KERNEL_ADDRPERM (int ) ;
 scalar_t__ VM_MAP_NULL ;
 int VM_PROT_ALL ;
 scalar_t__ mach_memory_entry_allocate (TYPE_2__**,int *) ;
 int panic (char*) ;
 int pmap_create (int *,int ,int ) ;
 scalar_t__ vm_map_create (int ,int ,scalar_t__,void*) ;

__attribute__((used)) static void
_vm_commpage_init(
 ipc_port_t *handlep,
 vm_map_size_t size)
{
 kern_return_t kr;
 vm_named_entry_t mem_entry;
 vm_map_t new_map;

 SHARED_REGION_TRACE_DEBUG(
  ("commpage: -> _init(0x%llx)\n",
   (long long)size));

 kr = mach_memory_entry_allocate(&mem_entry,
     handlep);
 if (kr != KERN_SUCCESS) {
  panic("_vm_commpage_init: could not allocate mem_entry");
 }
 new_map = vm_map_create(pmap_create(((void*)0), 0, 0), 0, size, TRUE);
 if (new_map == VM_MAP_NULL) {
  panic("_vm_commpage_init: could not allocate VM map");
 }
 mem_entry->backing.map = new_map;
 mem_entry->internal = TRUE;
 mem_entry->is_sub_map = TRUE;
 mem_entry->offset = 0;
 mem_entry->protection = VM_PROT_ALL;
 mem_entry->size = size;

 SHARED_REGION_TRACE_DEBUG(
  ("commpage: _init(0x%llx) <- %p\n",
   (long long)size, (void *)VM_KERNEL_ADDRPERM(*handlep)));
}
