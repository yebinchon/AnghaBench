
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* memmove ) (void*,void const*,size_t) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 void* stub1 (void*,void const*,size_t) ;

__attribute__((visibility("hidden")))
void *
memcpy(void *dst, const void *src, size_t n)
{
 return _libkernel_string_functions->memmove(dst, src, n);
}
