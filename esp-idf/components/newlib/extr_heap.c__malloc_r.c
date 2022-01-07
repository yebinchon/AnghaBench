
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 void* heap_caps_malloc_default (size_t) ;

void* _malloc_r(struct _reent *r, size_t size)
{
    return heap_caps_malloc_default(size);
}
