
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_columns; } ;


 int ESesc ;
 int gc_attr ;
 int gc_buffer_tab_stops ;
 int * gc_charset ;
 size_t gc_charset_select ;
 int gc_hanging_cursor ;
 int gc_is_tab_stop (int ) ;
 int gc_paint_char (int ,int ,unsigned char,int ) ;
 int gc_scroll_up (int,int ,int ) ;
 int gc_scrreg_bottom ;
 int gc_scrreg_top ;
 int gc_vt100state ;
 int gc_wrap_mode ;
 int gc_x ;
 int gc_y ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_putc_normal(unsigned char ch)
{
 switch (ch) {
 case '\a':
        break;
 case 127:
 case '\b':
  if (gc_hanging_cursor) {
   gc_hanging_cursor = 0;
  } else
   if (gc_x > 0) {
    gc_x--;
   }
  break;
 case '\t':
  if (gc_buffer_tab_stops) while (gc_x < vinfo.v_columns && !gc_is_tab_stop(++gc_x));

  if (gc_x >= vinfo.v_columns)
   gc_x = vinfo.v_columns-1;
  break;
 case 0x0b:
 case 0x0c:
 case '\n':
  if (gc_y >= gc_scrreg_bottom -1 ) {
   gc_scroll_up(1, gc_scrreg_top, gc_scrreg_bottom);
   gc_y = gc_scrreg_bottom - 1;
  } else {
   gc_y++;
  }
  break;
 case '\r':
  gc_x = 0;
  gc_hanging_cursor = 0;
  break;
 case 0x0e:
  gc_charset_select = 1;
  break;
 case 0x0f:
  gc_charset_select = 0;
  break;
 case 0x18 :
 case 0x1A :

  break;
 case '\033':
  gc_vt100state = ESesc;
  gc_hanging_cursor = 0;
  break;
 default:
  if (ch >= ' ') {
   if (gc_hanging_cursor) {
    gc_x = 0;
    if (gc_y >= gc_scrreg_bottom -1 ) {
     gc_scroll_up(1, gc_scrreg_top, gc_scrreg_bottom);
     gc_y = gc_scrreg_bottom - 1;
    } else {
     gc_y++;
    }
    gc_hanging_cursor = 0;
   }
   gc_paint_char(gc_x, gc_y, (ch >= 0x60 && ch <= 0x7f) ? ch + gc_charset[gc_charset_select]
        : ch, gc_attr);
   if (gc_x == vinfo.v_columns - 1) {
    gc_hanging_cursor = gc_wrap_mode;
   } else {
    gc_x++;
   }
  }
  break;
 }

}
