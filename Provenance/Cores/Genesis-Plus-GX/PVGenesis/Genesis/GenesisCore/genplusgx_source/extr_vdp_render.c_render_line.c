
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int x; } ;
struct TYPE_4__ {TYPE_1__ viewport; } ;


 scalar_t__ SYSTEM_MD ;
 scalar_t__ SYSTEM_SG ;
 scalar_t__ bg_list_index ;
 TYPE_2__ bitmap ;
 int ** linebuf ;
 int memset (int *,int,int) ;
 int parse_satb (int) ;
 int* reg ;
 int remap_line (int) ;
 int render_bg (int,int) ;
 int render_obj (int) ;
 int spr_ovr ;
 int status ;
 scalar_t__ system_hw ;
 int update_bg_pattern_cache (scalar_t__) ;

void render_line(int line)
{
  int width = bitmap.viewport.w;
  int x_offset;


  if (reg[1] & 0x40)
  {

    if (bg_list_index)
    {
      update_bg_pattern_cache(bg_list_index);
      bg_list_index = 0;
    }


    render_bg(line, width);


    render_obj(width);


    if (reg[0] & 0x20)
    {
      if (system_hw > SYSTEM_SG)
      {
        memset(&linebuf[0][0x20], 0x40, 8);
      }
    }


    if (line < (bitmap.viewport.h - 1))
    {
      parse_satb(line);
    }
  }
  else
  {

    if (system_hw < SYSTEM_MD)
    {

      status |= spr_ovr;
      spr_ovr = 0;


      parse_satb(line);
    }


    memset(&linebuf[0][0x20], 0x40, width);
  }


  x_offset = bitmap.viewport.x;
  if (x_offset > 0)
  {
    memset(&linebuf[0][0x20 - x_offset], 0x40, x_offset);
    memset(&linebuf[0][0x20 + width], 0x40, x_offset);
  }


  remap_line(line);
}
