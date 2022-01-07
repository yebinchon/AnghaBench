
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t bytes_allocated ;
 void* kalloc (size_t) ;
 void* malloc (size_t) ;
 int num_allocations ;

void *
kxld_alloc(size_t size)
{
    void * ptr = ((void*)0);




    ptr = malloc(size);
    return ptr;
}
