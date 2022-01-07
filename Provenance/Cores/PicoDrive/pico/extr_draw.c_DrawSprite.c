
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DrawScanline ;
 int TileFlip (int,int,int) ;
 int TileFlipSH_markop (int,int,int) ;
 int TileNorm (int,int,int) ;
 int TileNormSH_markop (int,int,int) ;

__attribute__((used)) static void DrawSprite(int *sprite, int sh)
{
  int width=0,height=0;
  int row=0,code=0;
  int pal;
  int tile=0,delta=0;
  int sx, sy;
  int (*fTileFunc)(int sx,int addr,int pal);


  sy=sprite[0];
  code=sprite[1];
  sx=code>>16;
  width=sy>>28;
  height=(sy>>24)&7;
  sy=(sy<<16)>>16;

  row=DrawScanline-sy;

  if (code&0x1000) row=(height<<3)-1-row;

  tile=code + (row>>3);
  delta=height;
  if (code&0x0800) { tile+=delta*(width-1); delta=-delta; }

  tile &= 0x7ff; tile<<=4; tile+=(row&7)<<1;
  delta<<=4;

  pal=(code>>9)&0x30;
  pal|=sh<<6;

  if (sh && (code&0x6000) == 0x6000) {
    if(code&0x0800) fTileFunc=TileFlipSH_markop;
    else fTileFunc=TileNormSH_markop;
  } else {
    if(code&0x0800) fTileFunc=TileFlip;
    else fTileFunc=TileNorm;
  }

  for (; width; width--,sx+=8,tile+=delta)
  {
    if(sx<=0) continue;
    if(sx>=328) break;

    tile&=0x7fff;
    fTileFunc(sx,tile,pal);
  }
}
