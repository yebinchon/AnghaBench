
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uptr ;
typedef int uint8_t ;


 int ASAN_ARRAY_COOKIE ;
 int * SHADOW_FOR_ADDRESS (int ) ;

void
__asan_poison_cxx_array_cookie(uptr p)
{
 uint8_t *shadow = SHADOW_FOR_ADDRESS(p);
 *shadow = ASAN_ARRAY_COOKIE;
}
