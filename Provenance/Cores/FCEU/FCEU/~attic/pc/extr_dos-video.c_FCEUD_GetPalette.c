
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8 ;


 size_t* palettedbb ;
 size_t* palettedbg ;
 size_t* palettedbr ;

void FCEUD_GetPalette(uint8 i, uint8 *r, uint8 *g, uint8 *b)
{
 *r=palettedbr[i];
 *g=palettedbg[i];
 *b=palettedbb[i];
}
