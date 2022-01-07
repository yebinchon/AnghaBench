
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* palettedbb ;
 int* palettedbg ;
 int* palettedbr ;
 int vga_setpalette (int,int,int,int) ;

__attribute__((used)) static void FlushPalette(void)
{
 int x;
 for(x=0;x<256;x++)
 {
  int z=x;
  vga_setpalette(z,palettedbr[x]>>2,palettedbg[x]>>2,palettedbb[x]>>2);
 }
}
