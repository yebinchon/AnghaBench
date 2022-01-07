
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
mymemmove (unsigned char *dest, unsigned char *src, size_t n)
{
  if ((src <= dest && src + n <= dest)
      || src >= dest)
    while (n-- > 0)
      *dest++ = *src++;
  else
    {
      dest += n;
      src += n;
      while (n-- > 0)
 *--dest = *--src;
    }
}
