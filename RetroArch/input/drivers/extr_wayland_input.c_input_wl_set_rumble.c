
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ joypad; } ;
typedef TYPE_1__ input_ctx_wayland_data_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;


 int input_joypad_set_rumble (scalar_t__,unsigned int,int,int ) ;

__attribute__((used)) static bool input_wl_set_rumble(void *data, unsigned port,
      enum retro_rumble_effect effect, uint16_t strength)
{
   input_ctx_wayland_data_t *wl = (input_ctx_wayland_data_t*)data;
   if (wl && wl->joypad)
      return input_joypad_set_rumble(wl->joypad, port, effect, strength);
   return 0;
}
