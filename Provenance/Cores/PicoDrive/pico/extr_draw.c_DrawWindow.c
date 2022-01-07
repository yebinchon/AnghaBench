
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {int* vram; struct PicoVideo video; } ;


 int DrawScanline ;
 scalar_t__ HighCol ;
 int PDRAW_WND_DIFF_PRIO ;
 TYPE_1__ Pico ;
 int TileFlip (int,int,int) ;
 int TileNorm (int,int,int) ;
 int rendstatus ;

__attribute__((used)) static void DrawWindow(int tstart, int tend, int prio, int sh)
{
  struct PicoVideo *pvid=&Pico.video;
  int tilex,ty,nametab,code=0;
  int blank=-1;


  if (pvid->reg[12]&1)
  {
    nametab=(pvid->reg[3]&0x3c)<<9;
    nametab+=(DrawScanline>>3)<<6;
  }
  else
  {
    nametab=(pvid->reg[3]&0x3e)<<9;
    nametab+=(DrawScanline>>3)<<5;
  }

  tilex=tstart<<1;

  if (!(rendstatus & PDRAW_WND_DIFF_PRIO)) {

    code=Pico.vram[nametab+tilex];

    if ((code>>15) != prio) return;
  }

  tend<<=1;
  ty=(DrawScanline&7)<<1;


  if (!sh)
  {
    for (; tilex < tend; tilex++)
    {
      int addr=0,zero=0;
      int pal;

      code=Pico.vram[nametab+tilex];
      if (code==blank) continue;
      if ((code>>15) != prio) {
        rendstatus |= PDRAW_WND_DIFF_PRIO;
        continue;
      }

      pal=((code>>9)&0x30);


      addr=(code&0x7ff)<<4;
      if (code&0x1000) addr+=14-ty; else addr+=ty;

      if (code&0x0800) zero=TileFlip(8+(tilex<<3),addr,pal);
      else zero=TileNorm(8+(tilex<<3),addr,pal);

      if (zero) blank=code;
    }
  }
  else
  {
    for (; tilex < tend; tilex++)
    {
      int addr=0,zero=0;
      int pal;

      code=Pico.vram[nametab+tilex];
      if(code==blank) continue;
      if((code>>15) != prio) {
        rendstatus |= PDRAW_WND_DIFF_PRIO;
        continue;
      }

      pal=((code>>9)&0x30);

      if (prio) {
        int *zb = (int *)(HighCol+8+(tilex<<3));
        *zb++ &= 0xbfbfbfbf;
        *zb &= 0xbfbfbfbf;
      } else {
        pal |= 0x40;
      }


      addr=(code&0x7ff)<<4;
      if (code&0x1000) addr+=14-ty; else addr+=ty;

      if (code&0x0800) zero=TileFlip(8+(tilex<<3),addr,pal);
      else zero=TileNorm(8+(tilex<<3),addr,pal);

      if (zero) blank=code;
    }
  }
}
