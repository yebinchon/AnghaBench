
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_map_t ;
typedef int kern_return_t ;
typedef int * host_priv_t ;


 int * HOST_PRIV_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_HOST ;
 int KERN_INVALID_TASK ;
 int KERN_SUCCESS ;
 int TRUE ;
 int VM_KERN_MEMORY_OSFMK ;
 scalar_t__ VM_MAP_NULL ;
 int VM_MAP_PAGE_MASK (scalar_t__) ;
 int VM_PROT_ALL ;
 int VM_PROT_NONE ;
 int assert (int) ;
 int realhost ;
 int vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;
 int vm_map_unwire (scalar_t__,int ,int ,int ) ;
 int vm_map_wire_kernel (scalar_t__,int ,int ,int,int ,int ) ;

kern_return_t
vm_wire(
 host_priv_t host_priv,
 vm_map_t map,
 vm_offset_t start,
 vm_size_t size,
 vm_prot_t access)
{
 kern_return_t rc;

 if (host_priv == HOST_PRIV_NULL)
  return KERN_INVALID_HOST;

 assert(host_priv == &realhost);

 if (map == VM_MAP_NULL)
  return KERN_INVALID_TASK;

 if ((access & ~VM_PROT_ALL) || (start + size < start))
  return KERN_INVALID_ARGUMENT;

 if (size == 0) {
  rc = KERN_SUCCESS;
 } else if (access != VM_PROT_NONE) {
  rc = vm_map_wire_kernel(map,
     vm_map_trunc_page(start,
         VM_MAP_PAGE_MASK(map)),
     vm_map_round_page(start+size,
         VM_MAP_PAGE_MASK(map)),
     access, VM_KERN_MEMORY_OSFMK,
     TRUE);
 } else {
  rc = vm_map_unwire(map,
       vm_map_trunc_page(start,
           VM_MAP_PAGE_MASK(map)),
       vm_map_round_page(start+size,
           VM_MAP_PAGE_MASK(map)),
       TRUE);
 }
 return rc;
}
