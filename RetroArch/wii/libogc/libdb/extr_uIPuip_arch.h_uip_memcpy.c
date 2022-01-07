
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int s32_t ;



__attribute__((used)) static __inline__ void uip_memcpy(void *dest,const void *src,s32_t len)
{
 u8_t *dest0 = (u8_t*)dest;
 u8_t *src0 = (u8_t*)src;

 while(len--) {
  *dest0++ = *src0++;
 }
}
