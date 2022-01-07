
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_2__ {size_t r; size_t g; size_t b; } ;


 int paletterefresh ;
 TYPE_1__* psdl ;

void FCEUD_SetPalette(uint8 index, uint8 r, uint8 g, uint8 b)
{
 psdl[index].r=r;
 psdl[index].g=g;
 psdl[index].b=b;

 paletterefresh=1;
}
