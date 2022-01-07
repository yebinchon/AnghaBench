
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void menu_darken_bg(void *dst, void *src, int pixels, int darker)
{
 unsigned int *dest = dst;
 unsigned int *sorc = src;
 pixels /= 2;
 if (darker)
 {
  while (pixels--)
  {
   unsigned int p = *sorc++;
   *dest++ = ((p&0xf79ef79e)>>1) - ((p&0xc618c618)>>3);
  }
 }
 else
 {
  while (pixels--)
  {
   unsigned int p = *sorc++;
   *dest++ = (p&0xf79ef79e)>>1;
  }
 }
}
