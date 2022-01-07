
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void vidcpy_m2(void *dest, void *src, int m32col, int with_32c_border)
{
 unsigned char *pd = dest, *ps = src;
 int i, u;

 if (m32col) {
  for (i = 0; i < 224; i++)
  {
   ps += 8;
   pd += 32;
   for (u = 0; u < 256; u++)
    *pd++ = *ps++;
   ps += 64;
   pd += 32;
  }
 } else {
  for (i = 0; i < 224; i++)
  {
   ps += 8;
   for (u = 0; u < 320; u++)
    *pd++ = *ps++;
  }
 }
}
