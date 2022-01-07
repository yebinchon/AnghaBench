
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void bgr444_to_rgb32(void *to, void *from)
{
 unsigned short *ps = from;
 unsigned int *pd = to;
 int pixels;

 for (pixels = 0x40; pixels; pixels--, ps++, pd++)
 {
  *pd = ((*ps<<20)&0xe00000) | ((*ps<<8)&0xe000) | ((*ps>>4)&0xe0);
  *pd |= *pd >> 3;
 }
}
