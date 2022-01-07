
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int * typefilter_t ;


 size_t KDBG_TYPEFILTER_BITMAP_SIZE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TYPEFILTER_ALLOC_SIZE ;
 int VM_KERN_MEMORY_DIAG ;
 int kernel_map ;
 scalar_t__ kmem_alloc (int ,int *,scalar_t__,int ) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static typefilter_t typefilter_create(void)
{
 typefilter_t tf;
 if (KERN_SUCCESS == kmem_alloc(kernel_map, (vm_offset_t*)&tf, TYPEFILTER_ALLOC_SIZE, VM_KERN_MEMORY_DIAG)) {
  memset(&tf[KDBG_TYPEFILTER_BITMAP_SIZE], 0, TYPEFILTER_ALLOC_SIZE - KDBG_TYPEFILTER_BITMAP_SIZE);
  return tf;
 }
 return ((void*)0);
}
