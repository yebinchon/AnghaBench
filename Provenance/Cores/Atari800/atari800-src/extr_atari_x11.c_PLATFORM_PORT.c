
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INPUT_MOUSE_OFF ;
 scalar_t__ INPUT_mouse_mode ;
 int js0 ;
 int js0_centre_x ;
 int js0_centre_y ;
 int js0_mode ;
 int js1 ;
 int js1_centre_x ;
 int js1_centre_y ;
 int js1_mode ;
 int keypad_mode ;
 int keypad_stick ;
 int mouse_joystick (int) ;
 int mouse_stick ;
 int read_joystick (int ,int ,int ) ;
 int xmouse_mode ;

int PLATFORM_PORT(int num)
{
 int nibble_0 = 0x0f;
 int nibble_1 = 0x0f;

 if (num == 0) {
  if (keypad_mode == 0)
   nibble_0 = keypad_stick;
  else if (keypad_mode == 1)
   nibble_1 = keypad_stick;

  if (INPUT_mouse_mode == INPUT_MOUSE_OFF) {
   if (xmouse_mode == 0) {
    mouse_joystick(xmouse_mode);
    nibble_0 = mouse_stick;
   }
   else if (xmouse_mode == 1) {
    mouse_joystick(xmouse_mode);
    nibble_1 = mouse_stick;
   }
  }
 }
 else {
  if (keypad_mode == 2)
   nibble_0 = keypad_stick;
  else if (keypad_mode == 3)
   nibble_1 = keypad_stick;

  if (INPUT_mouse_mode == INPUT_MOUSE_OFF) {
   if (xmouse_mode == 2) {
    mouse_joystick(xmouse_mode);
    nibble_0 = mouse_stick;
   }
   else if (xmouse_mode == 3) {
    mouse_joystick(xmouse_mode);
    nibble_1 = mouse_stick;
   }
  }
 }

 return (nibble_1 << 4) | nibble_0;
}
