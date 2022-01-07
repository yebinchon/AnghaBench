
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_columns; int v_rows; } ;


 int ATTR_BOLD ;
 int ATTR_NONE ;
 int ATTR_REVERSE ;
 int ATTR_UNDER ;
 int COLOR_BACKGROUND ;
 int COLOR_FOREGROUND ;
 int ESgotpars ;
 int ESnormal ;
 int FALSE ;
 int TRUE ;
 int gc_attr ;
 int gc_clear_line (int,int,int) ;
 int gc_clear_screen (int,int,int ,int,int) ;
 int gc_hanging_cursor ;
 unsigned int gc_numpars ;
 int gc_paint_char (unsigned int,int,char,int ) ;
 int* gc_par ;
 int gc_putc_normal (unsigned char) ;
 int gc_relative_origin ;
 int gc_scrreg_bottom ;
 int gc_scrreg_top ;
 int gc_set_tab_stop (int,int ) ;
 int gc_update_color (int ,int ) ;
 int gc_vt100state ;
 int gc_x ;
 int gc_y ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_putc_gotpars(unsigned char ch)
{
 unsigned int i;

 if (ch < ' ') {


  gc_putc_normal(ch);
  gc_vt100state = ESgotpars;
  return;
 }
 gc_vt100state = ESnormal;
 switch (ch) {
 case 'A':
  gc_y -= gc_par[0] ? gc_par[0] : 1;
  if (gc_y < gc_scrreg_top)
   gc_y = gc_scrreg_top;
  break;
 case 'B':
  gc_y += gc_par[0] ? gc_par[0] : 1;
  if (gc_y >= gc_scrreg_bottom)
   gc_y = gc_scrreg_bottom - 1;
  break;
 case 'C':
  gc_x += gc_par[0] ? gc_par[0] : 1;
  if (gc_x >= vinfo.v_columns)
   gc_x = vinfo.v_columns-1;
  break;
 case 'D':
  if (gc_par[0] > gc_x)
   gc_x = 0;
  else if (gc_par[0])
   gc_x -= gc_par[0];
  else if (gc_x)
   --gc_x;
  break;
 case 'H':
 case 'f':
  gc_x = gc_par[1] ? gc_par[1] - 1 : 0;
  gc_y = gc_par[0] ? gc_par[0] - 1 : 0;
  if (gc_relative_origin)
   gc_y += gc_scrreg_top;
  gc_hanging_cursor = 0;
  break;
 case 'X':
  if (gc_numpars) {
   for (i = gc_x; i < gc_x + gc_par[0]; i++)
    gc_paint_char(i, gc_y, ' ', ATTR_NONE);
  }
  break;
 case 'J':
  gc_clear_screen(gc_x, gc_y, 0, vinfo.v_rows, gc_par[0]);
  break;
 case 'K':
  gc_clear_line(gc_x, gc_y, gc_par[0]);
  break;
 case 'g':
  switch (gc_par[0]) {
   case 1:
   case 2:

    break;
   case 3:
    {
     for (i = 0; i <= vinfo.v_columns; i++)
      gc_set_tab_stop(i, FALSE);
    }
    break;
   case 0:
    gc_set_tab_stop(gc_x, FALSE);
    break;
  }
  break;
 case 'm':
  for (i = 0; i < gc_numpars; i++) {
   switch (gc_par[i]) {
   case 0:
    gc_attr = ATTR_NONE;
    gc_update_color(COLOR_BACKGROUND, FALSE);
    gc_update_color(COLOR_FOREGROUND, TRUE );
    break;
   case 1:
    gc_attr |= ATTR_BOLD;
    break;
   case 4:
    gc_attr |= ATTR_UNDER;
    break;
   case 7:
    gc_attr |= ATTR_REVERSE;
    break;
   case 22:
    gc_attr &= ~ATTR_BOLD;
    break;
   case 24:
    gc_attr &= ~ATTR_UNDER;
    break;
   case 27:
    gc_attr &= ~ATTR_REVERSE;
    break;
   case 5:
   case 25:
    break;
   default:
    if (gc_par[i] >= 30 && gc_par[i] <= 37)
     gc_update_color(gc_par[i] - 30, TRUE);
    if (gc_par[i] >= 40 && gc_par[i] <= 47)
     gc_update_color(gc_par[i] - 40, FALSE);
    break;
   }
  }
  break;
 case 'r':
  gc_x = gc_y = 0;

  if ((gc_numpars > 0) && (gc_par[0] < vinfo.v_rows)) {
   gc_scrreg_top = gc_par[0] ? gc_par[0] - 1 : 0;
  } else {
   gc_scrreg_top = 0;
  }
  if ((gc_numpars > 1) && (gc_par[1] <= vinfo.v_rows) && (gc_par[1] > gc_par[0])) {
   gc_scrreg_bottom = gc_par[1];
   if (gc_scrreg_bottom > vinfo.v_rows)
    gc_scrreg_bottom = vinfo.v_rows;
  } else {
   gc_scrreg_bottom = vinfo.v_rows;
  }
  if (gc_relative_origin)
   gc_y = gc_scrreg_top;
  break;
 }

}
