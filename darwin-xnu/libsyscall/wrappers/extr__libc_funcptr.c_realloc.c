
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* realloc ) (void*,size_t) ;} ;


 TYPE_1__* _libkernel_functions ;
 void* stub1 (void*,size_t) ;

__attribute__((visibility("hidden")))
void *
realloc(void *ptr, size_t size)
{
 return _libkernel_functions->realloc(ptr, size);
}
