
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int joypad; } ;
typedef TYPE_1__ linuxraw_input_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;


 int input_joypad_set_rumble (int ,unsigned int,int,int ) ;

__attribute__((used)) static bool linuxraw_set_rumble(void *data, unsigned port,
      enum retro_rumble_effect effect, uint16_t strength)
{
   linuxraw_input_t *linuxraw = (linuxraw_input_t*)data;
   if (!linuxraw)
      return 0;
   return input_joypad_set_rumble(linuxraw->joypad, port, effect, strength);
}
