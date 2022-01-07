
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DrawScanline ;
 int DrawSpritesSHi (unsigned char*) ;
 scalar_t__ HighCol ;
 int* HighPreSpr ;
 int PDRAW_SPR_LO_ON_HI ;
 unsigned char SPRL_MAY_HAVE_OP ;
 int TileFlipAS (int,int,int) ;
 int TileFlipAS_noop (int,int,int) ;
 int TileFlipAS_onlymark (int,int,int) ;
 int TileNormAS (int,int,int) ;
 int TileNormAS_noop (int,int,int) ;
 int TileNormAS_onlymark (int,int,int) ;
 int rendstatus ;

__attribute__((used)) static void DrawSpritesHiAS(unsigned char *sprited, int sh)
{
  int (*fTileFunc)(int sx,int addr,int pal);
  unsigned char *p;
  int entry, cnt, sh_cnt = 0;

  cnt = sprited[0] & 0x7f;
  if (cnt == 0) return;

  rendstatus |= PDRAW_SPR_LO_ON_HI;

  p = &sprited[3];


  for (entry = 0; entry < cnt; entry++)
  {
    int *sprite, code, pal, tile, sx, sy;
    int offs, delta, width, height, row;

    offs = (p[entry] & 0x7f) * 2;
    sprite = HighPreSpr + offs;
    code = sprite[1];
    pal = (code>>9)&0x30;

    if (code & 0x8000)
    {
      if (sh && pal == 0x30)
      {
        if (code&0x800) fTileFunc=TileFlipAS_noop;
        else fTileFunc=TileNormAS_noop;
      } else {
        if (code&0x800) fTileFunc=TileFlipAS;
        else fTileFunc=TileNormAS;
      }
    } else {
      if (code&0x800) fTileFunc=TileFlipAS_onlymark;
      else fTileFunc=TileNormAS_onlymark;
    }
    if (sh && pal == 0x30)
      p[sh_cnt++] = offs / 2;


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

    pal |= 0x80;
    for (; width; width--,sx+=8,tile+=delta)
    {
      if(sx<=0) continue;
      if(sx>=328) break;

      tile&=0x7fff;
      fTileFunc(sx,tile,pal);
    }
  }

  if (!sh || !(sprited[1]&SPRL_MAY_HAVE_OP)) return;


  {
    int c = 320/4/4, *zb = (int *)(HighCol+8);
    while (c--)
    {
      *zb++ &= 0x7f7f7f7f; *zb++ &= 0x7f7f7f7f;
      *zb++ &= 0x7f7f7f7f; *zb++ &= 0x7f7f7f7f;
    }
  }


  sprited[0] = sh_cnt;
  DrawSpritesSHi(sprited);
}
