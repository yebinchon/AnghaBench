
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void memset32(int *dest, int c, int count)
{
 for (; count >= 8; count -= 8, dest += 8)
  dest[0] = dest[1] = dest[2] = dest[3] =
  dest[4] = dest[5] = dest[6] = dest[7] = c;

 while (count--)
  *dest++ = c;
}
