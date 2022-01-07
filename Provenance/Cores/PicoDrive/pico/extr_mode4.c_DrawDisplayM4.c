
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {unsigned short* vram; struct PicoVideo video; } ;


 scalar_t__ HighCol ;
 int PDRAW_LAYERA_ON ;
 int PDRAW_LAYERB_ON ;
 int PDRAW_SPRITES_LOW_ON ;
 TYPE_1__ Pico ;
 int PicoDrawMask ;
 int draw_sprites (int) ;
 int draw_strip (unsigned short*,int,int,int) ;

__attribute__((used)) static void DrawDisplayM4(int scanline)
{
  struct PicoVideo *pv = &Pico.video;
  unsigned short *nametab;
  int line, tilex, dx, ty, cells;
  int cellskip = 0;
  int maxcells = 32;


  line = pv->reg[9] + scanline;
  if (line >= 224)
    line -= 224;


  nametab = Pico.vram;
  nametab += (pv->reg[2] & 0x0e) << (10-1);
  nametab += (line>>3) << (6-1);

  dx = pv->reg[8];
  if (scanline < 16 && (pv->reg[0] & 0x40))
    dx = 0;

  tilex = ((-dx >> 3) + cellskip) & 0x1f;
  ty = (line & 7) << 1;
  cells = maxcells - cellskip;

  dx = ((dx - 1) & 7) + 1;
  if (dx != 8)
    cells++;
  dx += cellskip << 3;


  if (PicoDrawMask & PDRAW_LAYERB_ON)
    draw_strip(nametab, dx, cells, tilex | 0x0000 | (ty << 16));


  if (PicoDrawMask & PDRAW_SPRITES_LOW_ON)
    draw_sprites(scanline);


  if (PicoDrawMask & PDRAW_LAYERA_ON)
    draw_strip(nametab, dx, cells, tilex | 0x1000 | (ty << 16));

  if (pv->reg[0] & 0x20)

    ((int *)HighCol)[2] = ((int *)HighCol)[3] = 0xe0e0e0e0;
}
