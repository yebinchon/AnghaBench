
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void bgr444_to_rgb32_sh(void *to, void *from)
{
 unsigned short *ps = from;
 unsigned int *pd = to;
 int pixels;

 pd += 0x40;
 for (pixels = 0x40; pixels; pixels--, ps++, pd++)
 {
  *pd = ((*ps<<20)&0xe00000) | ((*ps<<8)&0xe000) | ((*ps>>4)&0xe0);
  *pd >>= 1;
  *pd |= *pd >> 3;
  pd[0x40*2] = *pd;
 }

 ps -= 0x40;
 for (pixels = 0x40; pixels; pixels--, ps++, pd++)
 {
  *pd = ((*ps<<20)&0xe00000) | ((*ps<<8)&0xe000) | ((*ps>>4)&0xe0);
  continue;
  *pd += 0x00404040;
  if (*pd & 0x01000000) *pd |= 0x00e00000;
  if (*pd & 0x00010000) *pd |= 0x0000e000;
  if (*pd & 0x00000100) *pd |= 0x000000e0;
  *pd &= 0x00e0e0e0;
  *pd |= *pd >> 3;
 }
}
