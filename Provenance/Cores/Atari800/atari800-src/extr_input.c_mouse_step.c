
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int INPUT_STICK_BACK ;
 int INPUT_STICK_CENTRE ;
 int INPUT_STICK_FORWARD ;
 int INPUT_STICK_LEFT ;
 int INPUT_STICK_RIGHT ;
 int MOUSE_SHIFT ;
 int mouse_last_down ;
 int mouse_last_right ;
 int mouse_move_x ;
 int mouse_move_y ;
 int mouse_x ;
 int mouse_y ;

__attribute__((used)) static UBYTE mouse_step(void)
{
 static int e = 0;
 UBYTE r = INPUT_STICK_CENTRE;
 int dx = mouse_move_x >= 0 ? mouse_move_x : -mouse_move_x;
 int dy = mouse_move_y >= 0 ? mouse_move_y : -mouse_move_y;
 if (dx >= dy) {
  if (mouse_move_x == 0)
   return r;
  if (mouse_move_x < 0) {
   r &= INPUT_STICK_LEFT;
   mouse_last_right = 0;
   mouse_x--;
   mouse_move_x += 1 << MOUSE_SHIFT;
   if (mouse_move_x > 0)
    mouse_move_x = 0;
  }
  else {
   r &= INPUT_STICK_RIGHT;
   mouse_last_right = 1;
   mouse_x++;
   mouse_move_x -= 1 << MOUSE_SHIFT;
   if (mouse_move_x < 0)
    mouse_move_x = 0;
  }
  e -= dy;
  if (e < 0) {
   e += dx;
   if (mouse_move_y < 0) {
    r &= INPUT_STICK_FORWARD;
    mouse_last_down = 0;
    mouse_y--;
    mouse_move_y += 1 << MOUSE_SHIFT;
    if (mouse_move_y > 0)
     mouse_move_y = 0;
   }
   else {
    r &= INPUT_STICK_BACK;
    mouse_last_down = 1;
    mouse_y++;
    mouse_move_y -= 1 << MOUSE_SHIFT;
    if (mouse_move_y < 0)
     mouse_move_y = 0;
   }
  }
 }
 else {
  if (mouse_move_y < 0) {
   r &= INPUT_STICK_FORWARD;
   mouse_last_down = 0;
   mouse_y--;
   mouse_move_y += 1 << MOUSE_SHIFT;
   if (mouse_move_y > 0)
    mouse_move_y = 0;
  }
  else {
   r &= INPUT_STICK_BACK;
   mouse_last_down = 1;
   mouse_y++;
   mouse_move_y -= 1 << MOUSE_SHIFT;
   if (mouse_move_y < 0)
    mouse_move_y = 0;
  }
  e -= dx;
  if (e < 0) {
   e += dy;
   if (mouse_move_x < 0) {
    r &= INPUT_STICK_LEFT;
    mouse_last_right = 0;
    mouse_x--;
    mouse_move_x += 1 << MOUSE_SHIFT;
    if (mouse_move_x > 0)
     mouse_move_x = 0;
   }
   else {
    r &= INPUT_STICK_RIGHT;
    mouse_last_right = 1;
    mouse_x++;
    mouse_move_x -= 1 << MOUSE_SHIFT;
    if (mouse_move_x < 0)
     mouse_move_x = 0;
   }
  }
 }
 return r;
}
