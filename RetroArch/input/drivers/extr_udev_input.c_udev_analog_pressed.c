
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_keybind {size_t key; scalar_t__ valid; } ;
typedef int int16_t ;


 scalar_t__ BIT_GET (int ,int ) ;
 int input_conv_analog_id_to_bind_id (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int * rarch_keysym_lut ;
 int udev_key_state ;

__attribute__((used)) static int16_t udev_analog_pressed(const struct retro_keybind *binds,
      unsigned idx, unsigned id)
{
   unsigned id_minus = 0;
   unsigned id_plus = 0;
   int16_t pressed_minus = 0;
   int16_t pressed_plus = 0;

   input_conv_analog_id_to_bind_id(idx, id, id_minus, id_plus);

   if ( binds[id_minus].valid
         && BIT_GET(udev_key_state,
            rarch_keysym_lut[binds[id_minus].key]))
      pressed_minus = -0x7fff;
   if ( binds[id_plus].valid
         && BIT_GET(udev_key_state,
         rarch_keysym_lut[binds[id_plus].key]))
      pressed_plus = 0x7fff;

   return pressed_plus + pressed_minus;
}
