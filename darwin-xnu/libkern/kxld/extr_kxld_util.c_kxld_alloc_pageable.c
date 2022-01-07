
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 int VM_KERN_MEMORY_OSKEXT ;
 int kernel_map ;
 scalar_t__ kmem_alloc_pageable (int ,scalar_t__*,size_t,int ) ;
 void* kxld_page_alloc_untracked (size_t) ;
 size_t round_page (size_t) ;

void *
kxld_alloc_pageable(size_t size)
{
    size = round_page(size);
    return kxld_page_alloc_untracked(size);

}
