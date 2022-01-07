
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* g_test_malloc_ptr (size_t) ;
 void* stub1 (size_t) ;

void* test_malloc_wrapper(size_t size)
{
    return (*g_test_malloc_ptr)(size);
}
