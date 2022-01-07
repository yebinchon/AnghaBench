
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 size_t KALLOC_MAX ;
 int VM_KERN_MEMORY_OSKEXT ;
 void* kalloc (size_t) ;
 int kernel_map ;
 scalar_t__ kmem_alloc (int ,scalar_t__*,size_t,int ) ;
 void* malloc (size_t) ;
 size_t round_page (size_t) ;

void *
kxld_page_alloc_untracked(size_t size)
{
    void * ptr = ((void*)0);





    size = round_page(size);
    ptr = malloc(size);


    return ptr;
}
