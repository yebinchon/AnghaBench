
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ s8_t ;
typedef scalar_t__ s32_t ;



__attribute__((used)) static __inline__ void uip_memset(void *dest,s32_t c,s32_t len)
{
 u8_t *dest0 = (u8_t*)dest;

 while(len--) {
  *dest0++ = (s8_t)c;
 }
}
