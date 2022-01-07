
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* memcmp ) (void const*,void const*,size_t) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 int stub1 (void const*,void const*,size_t) ;

__attribute__((visibility("hidden")))
int
memcmp(const void *s1, const void *s2, size_t n)
{
 return _libkernel_string_functions->memcmp(s1, s2, n);
}
