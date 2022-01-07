
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8 ;


 size_t* palettedbb ;
 size_t* palettedbg ;
 size_t* palettedbr ;
 int vga_setpalette (size_t,size_t,size_t,size_t) ;
 scalar_t__ vidready ;

void FCEUD_SetPalette(uint8 index, uint8 r, uint8 g, uint8 b)
{
  palettedbr[index]=r;
  palettedbg[index]=g;
  palettedbb[index]=b;
  if(vidready)
  {
   vga_setpalette(index,r>>2,g>>2,b>>2);
  }
}
