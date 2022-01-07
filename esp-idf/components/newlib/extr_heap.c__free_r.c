
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 int heap_caps_free (void*) ;

void _free_r(struct _reent *r, void* ptr)
{
    heap_caps_free(ptr);
}
