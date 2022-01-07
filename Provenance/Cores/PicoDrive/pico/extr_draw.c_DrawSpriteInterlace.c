
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DrawScanline ;
 int TileFlip (int,int,int) ;
 int TileNorm (int,int,int) ;

__attribute__((used)) static void DrawSpriteInterlace(unsigned int *sprite)
{
  int width=0,height=0;
  int row=0,code=0;
  int pal;
  int tile=0,delta=0;
  int sx, sy;


  sy=sprite[0];
  height=sy>>24;
  sy=(sy&0x3ff)-0x100;
  width=(height>>2)&3; height&=3;
  width++; height++;

  row=(DrawScanline<<1)-sy;

  code=sprite[1];
  sx=((code>>16)&0x1ff)-0x78;

  if (code&0x1000) row^=(16<<height)-1;

  tile=code&0x3ff;
  tile+=row>>4;
  delta=height;
  if (code&0x0800) { tile+=delta*(width-1); delta=-delta; }

  tile<<=5; tile+=(row&15)<<1;

  delta<<=5;
  pal=((code>>9)&0x30);

  for (; width; width--,sx+=8,tile+=delta)
  {
    if(sx<=0) continue;
    if(sx>=328) break;

    tile&=0x7fff;
    if (code&0x0800) TileFlip(sx,tile,pal);
    else TileNorm(sx,tile,pal);
  }
}
