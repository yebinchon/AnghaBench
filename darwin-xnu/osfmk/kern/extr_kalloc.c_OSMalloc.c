
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int uint32_t ;
typedef int kern_return_t ;
struct TYPE_5__ {int OSMT_attr; } ;
typedef TYPE_1__* OSMallocTag ;


 int KERN_SUCCESS ;
 int OSMT_PAGEABLE ;
 int OSMalloc_Tagref (TYPE_1__*) ;
 int OSMalloc_Tagrele (TYPE_1__*) ;
 int PAGE_MASK ;
 int VM_KERN_MEMORY_KALLOC ;
 void* kalloc_tag_bt (int ,int ) ;
 int kernel_map ;
 int kmem_alloc_pageable_external (int ,int *,int) ;

void *
OSMalloc(
 uint32_t size,
 OSMallocTag tag)
{
 void *addr=((void*)0);
 kern_return_t kr;

 OSMalloc_Tagref(tag);
 if ((tag->OSMT_attr & OSMT_PAGEABLE)
     && (size & ~PAGE_MASK)) {
  if ((kr = kmem_alloc_pageable_external(kernel_map, (vm_offset_t *)&addr, size)) != KERN_SUCCESS)
   addr = ((void*)0);
 } else
  addr = kalloc_tag_bt((vm_size_t)size, VM_KERN_MEMORY_KALLOC);

 if (!addr)
  OSMalloc_Tagrele(tag);

 return(addr);
}
