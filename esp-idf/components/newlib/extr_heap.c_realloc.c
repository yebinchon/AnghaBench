
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* heap_caps_realloc_default (void*,size_t) ;

void* realloc(void* ptr, size_t size)
{
    return heap_caps_realloc_default(ptr, size);
}
