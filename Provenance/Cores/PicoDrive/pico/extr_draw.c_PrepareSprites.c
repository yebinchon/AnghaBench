
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {int* reg; } ;
struct TYPE_2__ {scalar_t__ vram; struct PicoVideo video; } ;


 int DrawScanline ;
 int** HighLnSpr ;
 int* HighPreSpr ;
 int MAX_LINE_SPRITES ;
 int POPT_DIS_SPRITE_LIM ;
 TYPE_1__ Pico ;
 int PicoOpt ;
 int SPRL_HAVE_HI ;
 int SPRL_HAVE_LO ;
 unsigned char SPRL_LO_ABOVE_HI ;
 int SPRL_MAY_HAVE_OP ;
 int printf (char*,...) ;

void PrepareSprites(int full)
{
  struct PicoVideo *pvid=&Pico.video;
  int u,link=0,sh;
  int table=0;
  int *pd = HighPreSpr;
  int max_lines = 224, max_sprites = 80, max_width = 328;
  int max_line_sprites = 20;

  if (!(Pico.video.reg[12]&1))
    max_sprites = 64, max_line_sprites = 16, max_width = 264;
  if (PicoOpt & POPT_DIS_SPRITE_LIM)
    max_line_sprites = MAX_LINE_SPRITES;

  if (pvid->reg[1]&8) max_lines = 240;
  sh = Pico.video.reg[0xC]&8;

  table=pvid->reg[5]&0x7f;
  if (pvid->reg[12]&1) table&=0x7e;
  table<<=8;

  if (!full)
  {
    int pack;

    for (u=0; u < max_sprites && (pack = *pd); u++, pd+=2)
    {
      unsigned int *sprite;
      int code2, sx, sy, height;

      sprite=(unsigned int *)(Pico.vram+((table+(link<<2))&0x7ffc));


      code2 = sprite[1];
      sx = (code2>>16)&0x1ff;
      sx -= 0x78;
      sy = (pack << 16) >> 16;
      height = (pack >> 24) & 0xf;

      if (sy < max_lines && sy + (height<<3) > DrawScanline &&
          (sx > -24 || sx < max_width))
      {
        int y = (sy >= DrawScanline) ? sy : DrawScanline;
        int entry = ((pd - HighPreSpr) / 2) | ((code2>>8)&0x80);
        for (; y < sy + (height<<3) && y < max_lines; y++)
        {
          int i, cnt;
          cnt = HighLnSpr[y][0] & 0x7f;
          if (cnt >= max_line_sprites) continue;

          for (i = 0; i < cnt; i++)
            if (((HighLnSpr[y][3+i] ^ entry) & 0x7f) == 0) goto found;


          HighLnSpr[y][3+cnt] = entry;
          HighLnSpr[y][0] = cnt + 1;
found:;
          if (entry & 0x80)
               HighLnSpr[y][1] |= SPRL_HAVE_HI;
          else HighLnSpr[y][1] |= SPRL_HAVE_LO;
        }
      }

      code2 &= ~0xfe000000;
      code2 -= 0x00780000;
      pd[1] = code2;


      link=(sprite[0]>>16)&0x7f;
      if (!link) break;
    }
  }
  else
  {
    for (u = 0; u < max_lines; u++)
      *((int *)&HighLnSpr[u][0]) = 0;

    for (u = 0; u < max_sprites; u++)
    {
      unsigned int *sprite;
      int code, code2, sx, sy, hv, height, width;

      sprite=(unsigned int *)(Pico.vram+((table+(link<<2))&0x7ffc));


      code = sprite[0];
      sy = (code&0x1ff)-0x80;
      hv = (code>>24)&0xf;
      height = (hv&3)+1;

      width = (hv>>2)+1;
      code2 = sprite[1];
      sx = (code2>>16)&0x1ff;
      sx -= 0x78;

      if (sy < max_lines && sy + (height<<3) > DrawScanline)
      {
        int entry, y, sx_min, onscr_x, maybe_op = 0;

        sx_min = 8-(width<<3);
        onscr_x = sx_min < sx && sx < max_width;
        if (sh && (code2 & 0x6000) == 0x6000)
          maybe_op = SPRL_MAY_HAVE_OP;

        entry = ((pd - HighPreSpr) / 2) | ((code2>>8)&0x80);
        y = (sy >= DrawScanline) ? sy : DrawScanline;
        for (; y < sy + (height<<3) && y < max_lines; y++)
        {
   unsigned char *p = &HighLnSpr[y][0];
          int cnt = p[0];
          if (cnt >= max_line_sprites) continue;

          if (p[2] >= max_line_sprites*2) {
            p[0] |= 0x80;
            continue;
          }
          p[2] += width;

          if (sx == -0x78) {
            if (cnt > 0)
              p[0] |= 0x80;
            continue;
          }

          if (cnt > 0 && !onscr_x) continue;

          p[3+cnt] = entry;
          p[0] = cnt + 1;
          p[1] |= (entry & 0x80) ? SPRL_HAVE_HI : SPRL_HAVE_LO;
          p[1] |= maybe_op;
          if (cnt > 0 && (code2 & 0x8000) && !(p[3+cnt-1]&0x80))
            p[1] |= SPRL_LO_ABOVE_HI;
        }
      }

      *pd++ = (width<<28)|(height<<24)|(hv<<16)|((unsigned short)sy);
      *pd++ = (sx<<16)|((unsigned short)code2);


      link=(code>>16)&0x7f;
      if (!link) break;
    }
    *pd = 0;
  }
}
