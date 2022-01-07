
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int VM_KERN_MEMORY_KALLOC ;
 void* kalloc_tag_bt (int ,int ) ;

void *
kalloc_external(
       vm_size_t size)
{
 return( kalloc_tag_bt(size, VM_KERN_MEMORY_KALLOC) );
}
