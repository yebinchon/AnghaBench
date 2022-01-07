
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int joypad; } ;
typedef TYPE_1__ input_ctx_wayland_data_t ;


 int input_joypad_init_driver (char const*,TYPE_1__*) ;
 int input_keymaps_init_keyboard_lut (int ) ;
 int rarch_key_map_linux ;

bool input_wl_init(void *data, const char *joypad_name)
{
   input_ctx_wayland_data_t *wl = (input_ctx_wayland_data_t*)data;

   if (!wl)
      return 0;

   wl->joypad = input_joypad_init_driver(joypad_name, wl);

   if (!wl->joypad)
      return 0;

   input_keymaps_init_keyboard_lut(rarch_key_map_linux);
   return 1;
}
