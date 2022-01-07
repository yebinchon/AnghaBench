
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct wl_keyboard {int dummy; } ;
struct TYPE_3__ {int key_state; } ;
struct TYPE_4__ {TYPE_1__ input; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;


 int BIT_CLEAR (int ,scalar_t__) ;
 int BIT_SET (int ,scalar_t__) ;
 int RETRO_DEVICE_KEYBOARD ;
 scalar_t__ WL_KEYBOARD_KEY_STATE_PRESSED ;
 scalar_t__ WL_KEYBOARD_KEY_STATE_RELEASED ;
 scalar_t__ handle_xkb (scalar_t__,int) ;
 int input_keyboard_event (int,int ,int ,int ,int ) ;
 int input_keymaps_translate_keysym_to_rk (scalar_t__) ;

__attribute__((used)) static void keyboard_handle_key(void *data,
      struct wl_keyboard *keyboard,
      uint32_t serial,
      uint32_t time,
      uint32_t key,
      uint32_t state)
{
   (void)serial;
   (void)time;
   (void)keyboard;

   int value = 1;
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if (state == WL_KEYBOARD_KEY_STATE_PRESSED)
   {
      BIT_SET(wl->input.key_state, key);
      value = 1;
   }
   else if (state == WL_KEYBOARD_KEY_STATE_RELEASED)
   {
      BIT_CLEAR(wl->input.key_state, key);
      value = 0;
   }





   input_keyboard_event(value,
   input_keymaps_translate_keysym_to_rk(key),
         0, 0, RETRO_DEVICE_KEYBOARD);
}
