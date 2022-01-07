
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int joypad; } ;
typedef TYPE_1__ uwp_input_t ;
struct retro_keybind {scalar_t__ key; int valid; } ;
typedef int rarch_joypad_info_t ;
typedef int int16_t ;


 scalar_t__ RETROK_LAST ;
 int input_conv_analog_id_to_bind_id (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int input_joypad_analog (int ,int ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 scalar_t__ uwp_keyboard_pressed (scalar_t__) ;

__attribute__((used)) static int16_t uwp_pressed_analog(uwp_input_t *uwp,
   rarch_joypad_info_t joypad_info,
   const struct retro_keybind *binds,
   unsigned port, unsigned idx, unsigned id)
{
   const struct retro_keybind *bind_minus, *bind_plus;
   int16_t pressed_minus = 0, pressed_plus = 0, pressed_keyboard;
   unsigned id_minus = 0, id_plus = 0;


   input_conv_analog_id_to_bind_id(idx, id, id_minus, id_plus);

   bind_minus = &binds[id_minus];
   bind_plus = &binds[id_plus];

   if (!bind_minus->valid || !bind_plus->valid)
      return 0;

   if ((bind_minus->key < RETROK_LAST) && uwp_keyboard_pressed(bind_minus->key))
      pressed_minus = -0x7fff;
   if ((bind_plus->key < RETROK_LAST) && uwp_keyboard_pressed(bind_plus->key))
      pressed_plus = 0x7fff;

   pressed_keyboard = pressed_plus + pressed_minus;
   if (pressed_keyboard != 0)
      return pressed_keyboard;


   return input_joypad_analog(uwp->joypad, joypad_info, port, idx, id, binds);
}
