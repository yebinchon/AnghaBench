
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uptr ;
typedef int uint8_t ;


 int __nosan_memset (void*,int ,size_t) ;

__attribute__((used)) static void
kasan_set_shadow(uptr addr, size_t sz, uint8_t val)
{
 __nosan_memset((void *)addr, val, sz);
}
