
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* memregs ;

__attribute__((used)) static void gp2x_video_setpalette_(int *pal, int len)
{
 unsigned short *g = (unsigned short *)pal;
 volatile unsigned short *memreg = &memregs[0x295A>>1];

 memregs[0x2958>>1] = 0;

 len *= 2;
 while (len--)
  *memreg = *g++;
}
