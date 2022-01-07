
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bytes_allocated ;
 void* kxld_page_alloc_untracked (size_t) ;
 int num_allocations ;
 scalar_t__ round_page (size_t) ;

void *
kxld_page_alloc(size_t size)
{
    void * ptr = ((void*)0);

    ptr = kxld_page_alloc_untracked(size);







    return ptr;
}
