
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ KEYBOARD_PRESSED ;
 scalar_t__ KEYBOARD_RELEASED ;
 int _modifiers ;

void update_modifier(u_int type, int toggle, int mask) {
 if (toggle) {
  if (type == KEYBOARD_PRESSED)
   _modifiers ^= mask;
 } else {
  if (type == KEYBOARD_RELEASED)
   _modifiers &= ~mask;
  else
   _modifiers |= mask;
 }
}
