
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DrawScanline ;
 int* HighPreSpr ;
 int TileFlip (int,int,int) ;
 int TileFlipSH (int,int,int) ;
 int TileFlipSH_onlyop_lp (int,int,int) ;
 int TileNorm (int,int,int) ;
 int TileNormSH (int,int,int) ;
 int TileNormSH_onlyop_lp (int,int,int) ;

__attribute__((used)) static void DrawSpritesSHi(unsigned char *sprited)
{
  int (*fTileFunc)(int sx,int addr,int pal);
  unsigned char *p;
  int cnt;

  cnt = sprited[0] & 0x7f;
  if (cnt == 0) return;

  p = &sprited[3];


  for (cnt--; cnt >= 0; cnt--)
  {
    int *sprite, code, pal, tile, sx, sy;
    int offs, delta, width, height, row;

    offs = (p[cnt] & 0x7f) * 2;
    sprite = HighPreSpr + offs;
    code = sprite[1];
    pal = (code>>9)&0x30;

    if (pal == 0x30)
    {
      if (code & 0x8000)
      {
        if (code&0x800) fTileFunc=TileFlipSH;
        else fTileFunc=TileNormSH;
      } else {
        if (code&0x800) fTileFunc=TileFlipSH_onlyop_lp;
        else fTileFunc=TileNormSH_onlyop_lp;
      }
    } else {
      if (!(code & 0x8000)) continue;
      if (code&0x800) fTileFunc=TileFlip;
      else fTileFunc=TileNorm;
    }


    sy=sprite[0];
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

    for (; width; width--,sx+=8,tile+=delta)
    {
      if(sx<=0) continue;
      if(sx>=328) break;

      tile&=0x7fff;
      fTileFunc(sx,tile,pal);
    }
  }
}
