
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* free ) (void*) ;} ;


 TYPE_1__* _libkernel_functions ;
 void stub1 (void*) ;

__attribute__((visibility("hidden")))
void
free(void *ptr)
{
 return _libkernel_functions->free(ptr);
}
