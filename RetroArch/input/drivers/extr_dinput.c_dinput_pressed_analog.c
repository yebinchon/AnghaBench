
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_keybind {scalar_t__ key; int valid; } ;
struct dinput_input {int* state; } ;
typedef int int16_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;


 scalar_t__ RETROK_LAST ;
 int input_conv_analog_id_to_bind_id (unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int* rarch_keysym_lut ;

__attribute__((used)) static int16_t dinput_pressed_analog(struct dinput_input *di,
      const struct retro_keybind *binds,
      unsigned idx, unsigned id)
{
   const struct retro_keybind *bind_minus, *bind_plus;
   int16_t pressed_minus = 0, pressed_plus = 0;
   unsigned id_minus = 0, id_plus = 0;

   input_conv_analog_id_to_bind_id(idx, id, id_minus, id_plus);

   bind_minus = &binds[id_minus];
   bind_plus = &binds[id_plus];

   if (!bind_minus->valid || !bind_plus->valid)
      return 0;

   if (bind_minus->key < RETROK_LAST)
   {
      unsigned sym = rarch_keysym_lut[(enum retro_key)bind_minus->key];
      if (di->state[sym] & 0x80)
         pressed_minus = -0x7fff;
   }
   if (bind_plus->key < RETROK_LAST)
   {
      unsigned sym = rarch_keysym_lut[(enum retro_key)bind_plus->key];
      if (di->state[sym] & 0x80)
         pressed_plus = 0x7fff;
   }

   return pressed_plus + pressed_minus;
}
