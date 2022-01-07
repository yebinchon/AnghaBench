
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INPUT_mouse_mode ;
 int MOUSE_SHIFT ;
 int mouse_move_x ;
 int mouse_move_y ;
 int mouse_x ;
 int mouse_y ;

void INPUT_CenterMousePointer(void)
{
 switch (INPUT_mouse_mode) {
 case 132:
 case 129:
 case 133:
  mouse_x = 114 << MOUSE_SHIFT;
  mouse_y = 114 << MOUSE_SHIFT;
  break;
 case 131:
 case 135:
  mouse_x = 84 << MOUSE_SHIFT;
  mouse_y = 60 << MOUSE_SHIFT;
  break;
 case 136:
 case 130:
 case 128:
 case 134:
  mouse_move_x = 0;
  mouse_move_y = 0;
  break;
 }
}
