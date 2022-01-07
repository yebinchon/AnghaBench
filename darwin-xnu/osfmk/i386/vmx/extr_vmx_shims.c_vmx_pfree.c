
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int PAGE_SIZE ;
 int kernel_map ;
 int kmem_free (int ,int ,int ) ;

void
vmx_pfree(void *va)
{
 kmem_free(kernel_map, (vm_offset_t)va, PAGE_SIZE);
}
