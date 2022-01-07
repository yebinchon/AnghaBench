
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dinput_input {int joypad; } ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;


 int input_joypad_set_rumble (int ,unsigned int,int,int ) ;

__attribute__((used)) static bool dinput_set_rumble(void *data, unsigned port,
      enum retro_rumble_effect effect, uint16_t strength)
{
   struct dinput_input *di = (struct dinput_input*)data;
   if (!di)
      return 0;
   return input_joypad_set_rumble(di->joypad, port, effect, strength);
}
