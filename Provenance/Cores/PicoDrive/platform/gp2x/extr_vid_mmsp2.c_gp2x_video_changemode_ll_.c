
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregs ;

__attribute__((used)) static void gp2x_video_changemode_ll_(int bpp, int is_pal)
{
   memregs[0x28DA>>1] = (((bpp+1)/8)<<9)|0xAB;
   memregs[0x290C>>1] = 320*((bpp+1)/8);
}
