
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intblock ;



void memcpy32(int *dest, int *src, int count)
{
 intblock *bd = (intblock *) dest, *bs = (intblock *) src;

 for (; count >= sizeof(*bd)/4; count -= sizeof(*bd)/4)
  *bd++ = *bs++;

 dest = (int *)bd; src = (int *)bs;
 while (count--)
  *dest++ = *src++;
}
