
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;


 int kernel_map ;
 int kfree (void*,scalar_t__) ;
 int kmem_free (int ,scalar_t__,scalar_t__) ;
 scalar_t__ pmap_cs_blob_limit ;

void
ubc_cs_blob_deallocate(
 vm_offset_t blob_addr,
 vm_size_t blob_size)
{





 {
  kfree((void *) blob_addr, blob_size);
 }
}
