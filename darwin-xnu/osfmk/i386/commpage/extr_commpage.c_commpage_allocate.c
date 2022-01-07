
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef int * vm_map_t ;
struct TYPE_9__ {int vmkf_map_jit; } ;
typedef TYPE_1__ vm_map_kernel_flags_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_11__ {int copy_strategy; } ;
struct TYPE_10__ {scalar_t__ is_sub_map; } ;


 int FALSE ;
 int KERN_SUCCESS ;
 int MEMORY_OBJECT_COPY_NONE ;
 int TRUE ;
 TYPE_7__* VME_OBJECT (TYPE_2__*) ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_FIXED ;
 int VM_INHERIT_NONE ;
 int VM_INHERIT_SHARE ;
 int VM_KERN_MEMORY_NONE ;
 int VM_KERN_MEMORY_OSFMK ;
 TYPE_1__ VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_MAP_PAGE_MASK (int ) ;
 int VM_PROT_ALL ;
 int VM_PROT_DEFAULT ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int assert (int) ;
 int ipc_port_release (int ) ;
 int kernel_map ;
 int mach_make_memory_entry (int ,size_t*,scalar_t__,int,int *,int *) ;
 int panic (char*,...) ;
 int vm_map_64_kernel (int *,scalar_t__*,size_t,int ,int ,TYPE_1__,int ,int ,int ,int ,int,int,int ) ;
 int vm_map_kernel (int ,scalar_t__*,size_t,int ,int ,TYPE_1__,int ,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ vm_map_lookup_entry (int ,int ,TYPE_2__**) ;
 int vm_map_trunc_page (scalar_t__,int ) ;
 int vm_map_wire_kernel (int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 int vm_protect (int ,scalar_t__,size_t,int ,int) ;

__attribute__((used)) static void*
commpage_allocate(
 vm_map_t submap,
 size_t area_used,
 vm_prot_t uperm)
{
 vm_offset_t kernel_addr = 0;
 vm_offset_t zero = 0;
 vm_size_t size = area_used;
 vm_map_entry_t entry;
 ipc_port_t handle;
 kern_return_t kr;
 vm_map_kernel_flags_t vmk_flags;

 if (submap == ((void*)0))
  panic("commpage submap is null");

 kr = vm_map_kernel(kernel_map,
      &kernel_addr,
      area_used,
      0,
      VM_FLAGS_ANYWHERE,
      VM_MAP_KERNEL_FLAGS_NONE,
      VM_KERN_MEMORY_OSFMK,
      ((void*)0),
      0,
      FALSE,
      VM_PROT_ALL,
      VM_PROT_ALL,
      VM_INHERIT_NONE);
 if (kr != KERN_SUCCESS)
  panic("cannot allocate commpage %d", kr);

 if ((kr = vm_map_wire_kernel(kernel_map,
         kernel_addr,
         kernel_addr+area_used,
         VM_PROT_DEFAULT, VM_KERN_MEMORY_OSFMK,
         FALSE)))
  panic("cannot wire commpage: %d", kr);
 if (!(kr = vm_map_lookup_entry( kernel_map, vm_map_trunc_page(kernel_addr, VM_MAP_PAGE_MASK(kernel_map)), &entry) || entry->is_sub_map))
  panic("cannot find commpage entry %d", kr);
 VME_OBJECT(entry)->copy_strategy = MEMORY_OBJECT_COPY_NONE;

 if ((kr = mach_make_memory_entry( kernel_map,
        &size,
        kernel_addr,
        uperm,
        &handle,
        ((void*)0) )))
  panic("cannot make entry for commpage %d", kr);

 vmk_flags = VM_MAP_KERNEL_FLAGS_NONE;
 if (uperm == (VM_PROT_READ | VM_PROT_EXECUTE)) {





  vmk_flags.vmkf_map_jit = TRUE;
 }

 kr = vm_map_64_kernel(
  submap,
  &zero,
  area_used,
  0,
  VM_FLAGS_FIXED,
  vmk_flags,
  VM_KERN_MEMORY_NONE,
  handle,
  0,
  FALSE,
  uperm,
  uperm,
  VM_INHERIT_SHARE);
 if (kr != KERN_SUCCESS)
  panic("cannot map commpage %d", kr);

 ipc_port_release(handle);




 kr = vm_protect(kernel_map, kernel_addr, area_used, FALSE, VM_PROT_READ | VM_PROT_WRITE);
 assert (kr == KERN_SUCCESS);

 return (void*)(intptr_t)kernel_addr;
}
