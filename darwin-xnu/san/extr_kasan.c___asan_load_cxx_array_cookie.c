
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uptr ;
typedef scalar_t__ uint8_t ;


 scalar_t__ ASAN_ARRAY_COOKIE ;
 scalar_t__ ASAN_HEAP_FREED ;
 scalar_t__* SHADOW_FOR_ADDRESS (int ) ;

uptr
__asan_load_cxx_array_cookie(uptr *p)
{
 uint8_t *shadow = SHADOW_FOR_ADDRESS((uptr)p);
 if (*shadow == ASAN_ARRAY_COOKIE) {
  return *p;
 } else if (*shadow == ASAN_HEAP_FREED) {
  return 0;
 } else {
  return *p;
 }
}
