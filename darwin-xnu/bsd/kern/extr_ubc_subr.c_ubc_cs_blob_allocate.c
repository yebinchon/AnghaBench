
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;
 int KERN_NO_SPACE ;
 int KERN_SUCCESS ;
 int VM_KERN_MEMORY_SECURITY ;
 scalar_t__ kalloc_tag (int ,int ) ;

kern_return_t
ubc_cs_blob_allocate(
 vm_offset_t *blob_addr_p,
 vm_size_t *blob_size_p)
{
 kern_return_t kr = KERN_FAILURE;

 {
  *blob_addr_p = (vm_offset_t) kalloc_tag(*blob_size_p, VM_KERN_MEMORY_SECURITY);

  if (*blob_addr_p == 0) {
   kr = KERN_NO_SPACE;
  } else {
   kr = KERN_SUCCESS;
  }
 }

 return kr;
}
