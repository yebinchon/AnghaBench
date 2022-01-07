
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void menu_darken_bg(void *dst, const void *src, int pixels, int darker)
{
 unsigned int *dest = dst;
 const unsigned int *srce = src;
 pixels /= 2;
 if (darker)
 {
  while (pixels--)
  {
   unsigned int p = *srce++;
   *dest++ = ((p&0xf79ef79e)>>1) - ((p&0xc618c618)>>3);
  }
 }
 else
 {
  while (pixels--)
  {
   unsigned int p = *srce++;
   *dest++ = (p&0xf79ef79e)>>1;
  }
 }
}
