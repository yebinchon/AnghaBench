
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {int* cram; scalar_t__ vram; struct PicoVideo video; } ;


 int DRAW2_LINE_WIDTH ;
 unsigned short* HighPal ;
 int PDRAW_SPRITES_LOW_ON ;
 TYPE_1__ Pico ;
 unsigned char* PicoDraw2FB ;
 int PicoDrawMask ;
 int PicoFrameFull () ;

void PDebugShowSprite(unsigned short *screen, int stride, int which)
{
  struct PicoVideo *pvid=&Pico.video;
  int table=0,u,link=0,*sprite=0,*fsprite,oldsprite[2];
  int x,y,max_sprites = 80, oldcol, oldreg;

  if (!(pvid->reg[12]&1))
    max_sprites = 64;

  table=pvid->reg[5]&0x7f;
  if (pvid->reg[12]&1) table&=0x7e;
  table<<=8;

  for (u=0; u < max_sprites && u <= which; u++)
  {
    sprite=(int *)(Pico.vram+((table+(link<<2))&0x7ffc));

    link=(sprite[0]>>16)&0x7f;
    if (!link) break;
  }
  if (u >= max_sprites) return;

  fsprite = (int *)(Pico.vram+(table&0x7ffc));
  oldsprite[0] = fsprite[0];
  oldsprite[1] = fsprite[1];
  fsprite[0] = (sprite[0] & ~0x007f01ff) | 0x000080;
  fsprite[1] = (sprite[1] & ~0x01ff8000) | 0x800000;
  oldreg = pvid->reg[7];
  oldcol = Pico.cram[0];
  pvid->reg[7] = 0;
  Pico.cram[0] = 0;
  PicoDrawMask = PDRAW_SPRITES_LOW_ON;

  PicoFrameFull();
  for (y = 0; y < 8*4; y++)
  {
    unsigned char *ps = PicoDraw2FB + DRAW2_LINE_WIDTH*y + 8;
    for (x = 0; x < 8*4; x++)
      if (ps[x]) screen[x] = HighPal[ps[x]], ps[x] = 0;
    screen += stride;
  }

  fsprite[0] = oldsprite[0];
  fsprite[1] = oldsprite[1];
  pvid->reg[7] = oldreg;
  Pico.cram[0] = oldcol;
  PicoDrawMask = -1;
}
