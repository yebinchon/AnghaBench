
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xkb_mod_index_t ;
typedef int xkb_keysym_t ;
typedef int uint16_t ;
typedef enum xkb_state_component { ____Placeholder_xkb_state_component } xkb_state_component ;


 unsigned int MOD_MAP_SIZE ;
 int RETROK_UNKNOWN ;
 int RETRO_DEVICE_KEYBOARD ;
 int XKB_KEY_DOWN ;
 int XKB_KEY_UP ;
 scalar_t__ XKB_MOD_INVALID ;
 scalar_t__ XKB_STATE_MODS_EFFECTIVE ;
 int input_keyboard_event (int,int ,int ,int ,int ) ;
 int input_keymaps_translate_keysym_to_rk (int) ;
 int * mod_map_bit ;
 int * mod_map_idx ;
 int xkb_keysym_to_utf32 (int const) ;
 int xkb_state ;
 unsigned int xkb_state_key_get_syms (int ,int,int const**) ;
 scalar_t__ xkb_state_mod_index_is_active (int ,scalar_t__,int) ;
 int xkb_state_update_key (int ,int,int ) ;

int handle_xkb(int code, int value)
{
   unsigned i;
   const xkb_keysym_t *syms = ((void*)0);
   unsigned num_syms = 0;
   uint16_t mod = 0;

   int xk_code = code + 8;

   if (!xkb_state)
      return -1;

   if (value == 2)
      xkb_state_update_key(xkb_state, xk_code, XKB_KEY_UP);

   if (value)
      num_syms = xkb_state_key_get_syms(xkb_state, xk_code, &syms);

   if (value > 0)
      xkb_state_update_key(xkb_state, xk_code, XKB_KEY_DOWN);
   else
      xkb_state_update_key(xkb_state, xk_code, XKB_KEY_UP);

   if (!syms)
      return -1;


   for (i = 0; i < MOD_MAP_SIZE; i++)
   {
      xkb_mod_index_t *map_idx = (xkb_mod_index_t*)&mod_map_idx[i];
      uint16_t *map_bit = (uint16_t *)&mod_map_bit[i];

      if (*map_idx != XKB_MOD_INVALID)
         mod |= xkb_state_mod_index_is_active(
               xkb_state, *map_idx,
               (enum xkb_state_component)
               ((XKB_STATE_MODS_EFFECTIVE) > 0)) ? *map_bit : 0;
   }

   input_keyboard_event(value, input_keymaps_translate_keysym_to_rk(code),
         num_syms ? xkb_keysym_to_utf32(syms[0]) : 0, mod, RETRO_DEVICE_KEYBOARD);

   for (i = 1; i < num_syms; i++)
      input_keyboard_event(value, RETROK_UNKNOWN,
            xkb_keysym_to_utf32(syms[i]), mod, RETRO_DEVICE_KEYBOARD);

   return 0;
}
