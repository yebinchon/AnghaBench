
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 scalar_t__ INPUT_MOUSE_GUN ;
 scalar_t__ INPUT_MOUSE_PEN ;
 scalar_t__ INPUT_mouse_mode ;
 int MOUSE_SHIFT ;
 int PLOT (int,int) ;
 int Screen_WIDTH ;
 scalar_t__ Screen_atari ;
 scalar_t__ mouse_pen_show_pointer ;
 int mouse_x ;
 int mouse_y ;

void INPUT_DrawMousePointer(void)
{
 if ((INPUT_mouse_mode == INPUT_MOUSE_PEN || INPUT_mouse_mode == INPUT_MOUSE_GUN) && mouse_pen_show_pointer) {
  int x = mouse_x >> MOUSE_SHIFT;
  int y = mouse_y >> MOUSE_SHIFT;
  if (x >= 0 && x <= 167 && y >= 0 && y <= 119) {
   UWORD *ptr = & ((UWORD *) Screen_atari)[12 + x + Screen_WIDTH * y];
   PLOT(-2, 0);
   PLOT(-1, 0);
   PLOT(1, 0);
   PLOT(2, 0);
   if (y >= 1) {
    PLOT(0, -1);
    if (y >= 2)
     PLOT(0, -2);
   }
   if (y <= 118) {
    PLOT(0, 1);
    if (y <= 117)
     PLOT(0, 2);
   }
  }
 }
}
