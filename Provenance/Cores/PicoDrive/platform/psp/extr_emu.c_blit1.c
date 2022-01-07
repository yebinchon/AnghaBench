
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAHW_PICO ;
 int PicoAHW ;
 unsigned char* PicoDraw2FB ;
 int PicoOpt ;
 int blitscreen_clut () ;
 int draw_pico_ptr () ;
 int memset32 (int*,int,int) ;

void blit1(void)
{
 if (PicoOpt&0x10)
 {
  int i;
  unsigned char *pd;

  for (pd = PicoDraw2FB+8, i = 8; i > 0; i--, pd += 512)
   memset32((int *)pd, 0xe0e0e0e0, 320/4);
  for (pd = PicoDraw2FB+512*232+8, i = 8; i > 0; i--, pd += 512)
   memset32((int *)pd, 0xe0e0e0e0, 320/4);
 }

 if (PicoAHW & PAHW_PICO)
  draw_pico_ptr();

 blitscreen_clut();
}
