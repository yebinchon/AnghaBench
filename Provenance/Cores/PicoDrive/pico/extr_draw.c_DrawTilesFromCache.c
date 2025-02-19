
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vram; } ;


 int DrawTilesFromCacheShPrep () ;
 unsigned char* HighCol ;
 int PDRAW_PLANE_HI_PRIO ;
 int PDRAW_SHHI_DONE ;
 TYPE_1__ Pico ;
 int TileFlip (int,int,int) ;
 int TileNorm (int,int,int) ;
 int rendstatus ;

__attribute__((used)) static void DrawTilesFromCache(int *hc, int sh, int rlim)
{
  int code, addr, dx;
  int pal;



  if (sh && (rendstatus & (PDRAW_SHHI_DONE|PDRAW_PLANE_HI_PRIO)))
  {
    if (!(rendstatus & PDRAW_SHHI_DONE))
      DrawTilesFromCacheShPrep();
    sh = 0;
  }

  if (!sh)
  {
    short blank=-1;
    while ((code=*hc++)) {
      int zero;
      if((short)code == blank) continue;

      addr=(code&0x7ff)<<4;
      addr+=(unsigned int)code>>25;
      dx=(code>>16)&0x1ff;

      pal=((code>>9)&0x30);
      if (rlim-dx < 0) goto last_cut_tile;

      if (code&0x0800) zero=TileFlip(dx,addr,pal);
      else zero=TileNorm(dx,addr,pal);

      if (zero) blank=(short)code;
    }
  }
  else
  {
    while ((code=*hc++)) {
      unsigned char *zb;

      addr=(code&0x7ff)<<4;
      addr+=(unsigned int)code>>25;
      dx=(code>>16)&0x1ff;
      zb = HighCol+dx;
      *zb++ &= 0xbf; *zb++ &= 0xbf; *zb++ &= 0xbf; *zb++ &= 0xbf;
      *zb++ &= 0xbf; *zb++ &= 0xbf; *zb++ &= 0xbf; *zb++ &= 0xbf;

      pal=((code>>9)&0x30);
      if (rlim-dx < 0) goto last_cut_tile;

      if (code&0x0800) TileFlip(dx,addr,pal);
      else TileNorm(dx,addr,pal);
    }
  }
  return;

last_cut_tile:
  {
    unsigned int t, pack=*(unsigned int *)(Pico.vram+addr);
    unsigned char *pd = HighCol+dx;
    if (!pack) return;
    if (code&0x0800)
    {
      switch (rlim-dx+8)
      {
        case 7: t=pack&0x00000f00; if (t) pd[6]=(unsigned char)(pal|(t>> 8));
        case 6: t=pack&0x000000f0; if (t) pd[5]=(unsigned char)(pal|(t>> 4));
        case 5: t=pack&0x0000000f; if (t) pd[4]=(unsigned char)(pal|(t ));
        case 4: t=pack&0xf0000000; if (t) pd[3]=(unsigned char)(pal|(t>>28));
        case 3: t=pack&0x0f000000; if (t) pd[2]=(unsigned char)(pal|(t>>24));
        case 2: t=pack&0x00f00000; if (t) pd[1]=(unsigned char)(pal|(t>>20));
        case 1: t=pack&0x000f0000; if (t) pd[0]=(unsigned char)(pal|(t>>16));
        default: break;
      }
    }
    else
    {
      switch (rlim-dx+8)
      {
        case 7: t=pack&0x00f00000; if (t) pd[6]=(unsigned char)(pal|(t>>20));
        case 6: t=pack&0x0f000000; if (t) pd[5]=(unsigned char)(pal|(t>>24));
        case 5: t=pack&0xf0000000; if (t) pd[4]=(unsigned char)(pal|(t>>28));
        case 4: t=pack&0x0000000f; if (t) pd[3]=(unsigned char)(pal|(t ));
        case 3: t=pack&0x000000f0; if (t) pd[2]=(unsigned char)(pal|(t>> 4));
        case 2: t=pack&0x00000f00; if (t) pd[1]=(unsigned char)(pal|(t>> 8));
        case 1: t=pack&0x0000f000; if (t) pd[0]=(unsigned char)(pal|(t>>12));
        default: break;
      }
    }
  }
}
