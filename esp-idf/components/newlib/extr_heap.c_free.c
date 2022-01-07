
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int heap_caps_free (void*) ;

void free(void *ptr)
{
    heap_caps_free(ptr);
}
