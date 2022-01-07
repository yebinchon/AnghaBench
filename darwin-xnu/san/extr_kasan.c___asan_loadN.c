
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uptr ;


 int TYPE_LOAD ;
 int kasan_check_range (void const*,size_t,int ) ;

void
__asan_loadN(uptr addr, size_t sz)
{
 kasan_check_range((const void *)addr, sz, TYPE_LOAD);
}
