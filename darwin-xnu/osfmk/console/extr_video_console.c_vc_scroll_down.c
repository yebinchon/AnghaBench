
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_2__ {int v_rowbytes; int v_rowscanbytes; scalar_t__ v_baseaddr; int v_depth; } ;


 int ISO_CHAR_HEIGHT ;
 int video_scroll_down (unsigned int*,unsigned int*,unsigned int*) ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
vc_scroll_down(int num, unsigned int scrreg_top, unsigned int scrreg_bottom)
{
 uint32_t *from, *to, linelongs, i, line, rowline, rowscanline;

 if(!vinfo.v_depth)
  return;

 linelongs = vinfo.v_rowbytes * (ISO_CHAR_HEIGHT >> 2);
 rowline = vinfo.v_rowbytes >> 2;
 rowscanline = vinfo.v_rowscanbytes >> 2;

 to = (uint32_t *) vinfo.v_baseaddr + (linelongs * scrreg_bottom)
  - (rowline - rowscanline);
 from = to - (linelongs * num);

 i = (scrreg_bottom - scrreg_top) - num;

 while (i-- > 0) {
  for (line = 0; line < ISO_CHAR_HEIGHT; line++) {



   video_scroll_down(from,
     (from-(vinfo.v_rowscanbytes >> 2)),
     to);

   from -= rowline;
   to -= rowline;
  }
 }
}
