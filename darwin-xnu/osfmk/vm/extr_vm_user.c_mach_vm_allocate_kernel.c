
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_object_offset_t ;
typedef scalar_t__ vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_USER_ALLOCATE ;
 int VM_INHERIT_DEFAULT ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 scalar_t__ VM_MAP_NULL ;
 int VM_MAP_PAGE_MASK (scalar_t__) ;
 scalar_t__ VM_MAP_PAGE_SIZE (scalar_t__) ;
 int VM_OBJECT_NULL ;
 int VM_PROT_ALL ;
 int VM_PROT_DEFAULT ;
 int vm_map_enter (scalar_t__,scalar_t__*,scalar_t__,scalar_t__,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ vm_map_min (scalar_t__) ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,int ) ;

kern_return_t
mach_vm_allocate_kernel(
 vm_map_t map,
 mach_vm_offset_t *addr,
 mach_vm_size_t size,
 int flags,
 vm_tag_t tag)
{
 vm_map_offset_t map_addr;
 vm_map_size_t map_size;
 kern_return_t result;
 boolean_t anywhere;


 if (flags & ~VM_FLAGS_USER_ALLOCATE)
  return KERN_INVALID_ARGUMENT;

 if (map == VM_MAP_NULL)
  return(KERN_INVALID_ARGUMENT);
 if (size == 0) {
  *addr = 0;
  return(KERN_SUCCESS);
 }

 anywhere = ((VM_FLAGS_ANYWHERE & flags) != 0);
 if (anywhere) {
  map_addr = vm_map_min(map);
  if (map_addr == 0)
   map_addr += VM_MAP_PAGE_SIZE(map);
 } else
  map_addr = vm_map_trunc_page(*addr,
          VM_MAP_PAGE_MASK(map));
 map_size = vm_map_round_page(size,
         VM_MAP_PAGE_MASK(map));
 if (map_size == 0) {
   return(KERN_INVALID_ARGUMENT);
 }

 result = vm_map_enter(
   map,
   &map_addr,
   map_size,
   (vm_map_offset_t)0,
   flags,
   VM_MAP_KERNEL_FLAGS_NONE,
   tag,
   VM_OBJECT_NULL,
   (vm_object_offset_t)0,
   FALSE,
   VM_PROT_DEFAULT,
   VM_PROT_ALL,
   VM_INHERIT_DEFAULT);

 *addr = map_addr;
 return(result);
}
