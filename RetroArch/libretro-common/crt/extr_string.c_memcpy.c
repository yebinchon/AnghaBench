
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memcpy(void *dst, const void *src, size_t len)
{
   size_t i;

   for (i = 0; i < len; i++)
      ((unsigned char *)dst)[i] = ((unsigned char *)src)[i];

   return dst;
}
