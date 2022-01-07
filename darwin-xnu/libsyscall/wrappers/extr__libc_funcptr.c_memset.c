
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* memset ) (void*,int,size_t) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 void* stub1 (void*,int,size_t) ;

__attribute__((visibility("hidden")))
void *
memset(void *b, int c, size_t len)
{
 return _libkernel_string_functions->memset(b, c, len);
}
