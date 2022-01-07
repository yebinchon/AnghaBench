
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TileFlipM4 (int,int,int) ;
 int TileNormM4 (int,int,int) ;

__attribute__((used)) static void draw_strip(const unsigned short *nametab, int dx, int cells, int tilex_ty_prio)
{
  int oldcode = -1, blank = -1;
  int addr = 0, pal = 0;


  for (; cells > 0; dx += 8, tilex_ty_prio++, cells--)
  {
    int code, zero;

    code = nametab[tilex_ty_prio & 0x1f];
    if (code == blank)
      continue;
    if ((code ^ tilex_ty_prio) & 0x1000)
      continue;

    if (code != oldcode) {
      oldcode = code;

      addr = (code & 0x1ff) << 4;
      addr += tilex_ty_prio >> 16;
      if (code & 0x0400)
        addr ^= 0xe;

      pal = (code>>7) & 0x10;
    }

    if (code&0x0200) zero = TileFlipM4(dx, addr, pal);
    else zero = TileNormM4(dx, addr, pal);

    if (zero)
      blank = code;
  }
}
