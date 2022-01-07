
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_3__ {int h; } ;
struct TYPE_4__ {TYPE_1__ viewport; } ;


 scalar_t__ SYSTEM_SMS ;
 int WRITE_LONG (int*,int) ;
 int* atex_table ;
 int * bg_pattern_cache ;
 TYPE_2__ bitmap ;
 int ** linebuf ;
 int memset (int *,int ,int) ;
 int* reg ;
 scalar_t__ system_hw ;
 int * vram ;
 int vscroll ;

void render_bg_m4(int line, int width)
{
  int column;
  uint16 *nt;
  uint32 attr, atex, *src;


  int index = ((reg[0] & 0x40) && (line < 0x10)) ? 0x100 : reg[0x08];
  int shift = index & 7;


  uint32 *dst = (uint32 *)&linebuf[0][0x20 + shift];


  int v_line = line + vscroll;


  uint16 nt_mask = ~0x3C00 ^ (reg[2] << 10);


  if (system_hw > SYSTEM_SMS)
  {
    nt_mask |= 0x400;
  }


  if (bitmap.viewport.h > 192)
  {

    v_line = v_line % 256;


    nt = (uint16 *)&vram[(0x3700 & nt_mask) + ((v_line >> 3) << 6)];
  }
  else
  {

    v_line = v_line % 224;


    nt = (uint16 *)&vram[(0x3800 + ((v_line >> 3) << 6)) & nt_mask];
  }


  v_line = (v_line & 7) << 3;


  index = (0x100 - index) >> 3;


  if (shift)
  {
    memset(&linebuf[0][0x20], 0, shift);
    index++;
  }


  width >>= 3;


  for(column = 0; column < width; column++, index++)
  {

    if((column == 24) && (reg[0] & 0x80))
    {

      if (bitmap.viewport.h > 192)
      {
        nt = (uint16 *)&vram[(0x3700 & nt_mask) + ((line >> 3) << 6)];
      }
      else
      {
        nt = (uint16 *)&vram[(0x3800 + ((line >> 3) << 6)) & nt_mask];
      }


      v_line = (line & 7) << 3;
    }


    attr = nt[index % width];

    attr = (((attr & 0xFF) << 8) | ((attr & 0xFF00) >> 8));



    atex = atex_table[(attr >> 11) & 3];


    src = (uint32 *)&bg_pattern_cache[((attr & 0x7FF) << 6) | (v_line)];
    *dst++ = (src[0] | atex);
    *dst++ = (src[1] | atex);

  }
}
