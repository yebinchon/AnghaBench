
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {scalar_t__ vram; struct PicoVideo video; } ;


 int DrawScanline ;
 int DrawSpriteInterlace (unsigned int*) ;
 TYPE_1__ Pico ;

__attribute__((used)) static void DrawAllSpritesInterlace(int pri, int sh)
{
  struct PicoVideo *pvid=&Pico.video;
  int i,u,table,link=0,sline=DrawScanline<<1;
  unsigned int *sprites[80];

  table=pvid->reg[5]&0x7f;
  if (pvid->reg[12]&1) table&=0x7e;
  table<<=8;

  for (i=u=0; u < 80 && i < 21; u++)
  {
    unsigned int *sprite;
    int code, sx, sy, height;

    sprite=(unsigned int *)(Pico.vram+((table+(link<<2))&0x7ffc));


    code = sprite[0];
    sx = sprite[1];
    if(((sx>>15)&1) != pri) goto nextsprite;


    sy = (code&0x3ff)-0x100;
    height = (((code>>24)&3)+1)<<4;
    if(sline < sy || sline >= sy+height) goto nextsprite;


    sx = (sx>>16)&0x1ff;
    sx -= 0x78;
    if(sx <= -8*3 || sx >= 328) goto nextsprite;


    sprites[i++]=sprite;

    nextsprite:

    link=(code>>16)&0x7f;
    if(!link) break;
  }


  for (i-- ;i>=0; i--)
    DrawSpriteInterlace(sprites[i]);
}
