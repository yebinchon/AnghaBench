
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ state; int modifier; scalar_t__ UTF16; int scancode; } ;
typedef TYPE_1__ KBDKeyEvent ;


 int KBD_WIIU_ALT ;
 int KBD_WIIU_CAPS_LOCK ;
 int KBD_WIIU_CTRL ;
 int KBD_WIIU_NUM_LOCK ;
 int KBD_WIIU_SCROLL_LOCK ;
 int KBD_WIIU_SHIFT ;
 int RETROKMOD_ALT ;
 int RETROKMOD_CAPSLOCK ;
 int RETROKMOD_CTRL ;
 int RETROKMOD_NUMLOCK ;
 int RETROKMOD_SCROLLOCK ;
 int RETROKMOD_SHIFT ;
 unsigned int RETROK_LAST ;
 int RETRO_DEVICE_KEYBOARD ;
 int input_keyboard_event (int,unsigned int,char,int ,int ) ;
 unsigned int input_keymaps_translate_keysym_to_rk (int ) ;
 int* keyboardState ;

void kb_key_callback(KBDKeyEvent *key)
{
   uint16_t mod = 0;
   unsigned code = 0;
   bool pressed = 0;

   if (key->state > 0)
      pressed = 1;

   code = input_keymaps_translate_keysym_to_rk(key->scancode);
   if (code < RETROK_LAST)
      keyboardState[code] = pressed;

   if (key->modifier & KBD_WIIU_SHIFT)
      mod |= RETROKMOD_SHIFT;

   if (key->modifier & KBD_WIIU_CTRL)
      mod |= RETROKMOD_CTRL;

   if (key->modifier & KBD_WIIU_ALT)
      mod |= RETROKMOD_ALT;

   if (key->modifier & KBD_WIIU_NUM_LOCK)
      mod |= RETROKMOD_NUMLOCK;

   if (key->modifier & KBD_WIIU_CAPS_LOCK)
      mod |= RETROKMOD_CAPSLOCK;

   if (key->modifier & KBD_WIIU_SCROLL_LOCK)
      mod |= RETROKMOD_SCROLLOCK;

   input_keyboard_event(pressed, code, (char)key->UTF16, mod,
         RETRO_DEVICE_KEYBOARD);
}
