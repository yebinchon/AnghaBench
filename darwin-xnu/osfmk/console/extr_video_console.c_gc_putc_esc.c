
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_rows; } ;


 int EScharsize ;
 int ESnormal ;
 int ESsetG0 ;
 int ESsetG1 ;
 int ESsquare ;
 int TRUE ;
 int gc_attr ;
 int * gc_charset ;
 int * gc_charset_save ;
 int gc_charset_select ;
 int gc_clear_screen (int ,int ,int ,int ,int) ;
 int gc_reset_vt100 () ;
 int gc_save_charset_s ;
 int gc_saveattr ;
 int gc_savex ;
 int gc_savey ;
 int gc_scroll_down (int,int ,int ) ;
 int gc_scroll_up (int,int ,int ) ;
 int gc_scrreg_bottom ;
 int gc_scrreg_top ;
 int gc_set_tab_stop (int ,int ) ;
 int gc_vt100state ;
 int gc_x ;
 int gc_y ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_putc_esc(unsigned char ch)
{
 gc_vt100state = ESnormal;

 switch (ch) {
 case '[':
  gc_vt100state = ESsquare;
  break;
 case 'c':
  gc_reset_vt100();
  gc_clear_screen(gc_x, gc_y, 0, vinfo.v_rows, 2);
  gc_x = gc_y = 0;
  break;
 case 'D':
 case 'E':
  if (gc_y >= gc_scrreg_bottom -1) {
   gc_scroll_up(1, gc_scrreg_top, gc_scrreg_bottom);
   gc_y = gc_scrreg_bottom - 1;
  } else {
   gc_y++;
  }
  if (ch == 'E') gc_x = 0;
  break;
 case 'H':
  gc_set_tab_stop(gc_x, TRUE);
  break;
 case 'M':
  if (gc_y <= gc_scrreg_top) {
   gc_scroll_down(1, gc_scrreg_top, gc_scrreg_bottom);
   gc_y = gc_scrreg_top;
  } else {
   gc_y--;
  }
  break;
 case '>':
  gc_reset_vt100();
  break;
 case '7':
  gc_savex = gc_x;
  gc_savey = gc_y;
  gc_saveattr = gc_attr;
  gc_save_charset_s = gc_charset_select;
  gc_charset_save[0] = gc_charset[0];
  gc_charset_save[1] = gc_charset[1];
  break;
 case '8':
  gc_x = gc_savex;
  gc_y = gc_savey;
  gc_attr = gc_saveattr;
  gc_charset_select = gc_save_charset_s;
  gc_charset[0] = gc_charset_save[0];
  gc_charset[1] = gc_charset_save[1];
  break;
 case 'Z':
  break;
 case '#':
  gc_vt100state = EScharsize;
  break;
 case '(':
  gc_vt100state = ESsetG0;
  break;
 case ')':
  gc_vt100state = ESsetG1;
  break;
 case '=':
  break;
 default:

  break;
 }

}
