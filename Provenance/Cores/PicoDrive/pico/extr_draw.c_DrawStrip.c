
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TileStrip {int hscroll; int line; int cells; int nametab; int xmask; scalar_t__* hc; } ;
struct TYPE_2__ {int* vram; } ;


 int PDRAW_PLANE_HI_PRIO ;
 TYPE_1__ Pico ;
 int TileFlip (int,int,int) ;
 int TileNorm (int,int,int) ;
 int rendstatus ;

__attribute__((used)) static void DrawStrip(struct TileStrip *ts, int plane_sh, int cellskip)
{
  int tilex,dx,ty,code=0,addr=0,cells;
  int oldcode=-1,blank=-1;
  int pal=0,sh;


  sh=(plane_sh<<5)&0x40;
  tilex=((-ts->hscroll)>>3)+cellskip;
  ty=(ts->line&7)<<1;
  dx=((ts->hscroll-1)&7)+1;
  cells = ts->cells - cellskip;
  if(dx != 8) cells++;
  dx+=cellskip<<3;

  for (; cells > 0; dx+=8,tilex++,cells--)
  {
    int zero=0;

    code=Pico.vram[ts->nametab+(tilex&ts->xmask)];
    if (code==blank) continue;
    if (code>>15) {
      int cval = code | (dx<<16) | (ty<<25);
      if(code&0x1000) cval^=7<<26;
      *ts->hc++ = cval;
      continue;
    }

    if (code!=oldcode) {
      oldcode = code;

      addr=(code&0x7ff)<<4;
      addr+=ty;
      if (code&0x1000) addr^=0xe;

      pal=((code>>9)&0x30)|sh;
    }

    if (code&0x0800) zero=TileFlip(dx,addr,pal);
    else zero=TileNorm(dx,addr,pal);

    if (zero) blank=code;
  }


  *ts->hc = 0;

  if (oldcode == -1) rendstatus |= PDRAW_PLANE_HI_PRIO;
}
