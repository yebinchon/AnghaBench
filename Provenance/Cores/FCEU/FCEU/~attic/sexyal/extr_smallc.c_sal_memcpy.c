
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



void sal_memcpy(void *dest, const void *src, uint32_t n)
{
 while(n--)
 {
  *(uint8_t*)dest=*(uint8_t *)src;
  (uint8_t*)dest++;
  (uint8_t*)src++;
 }
}
