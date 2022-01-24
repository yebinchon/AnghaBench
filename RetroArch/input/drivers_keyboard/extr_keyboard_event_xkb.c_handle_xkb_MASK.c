#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ xkb_mod_index_t ;
typedef  int /*<<< orphan*/  xkb_keysym_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  enum xkb_state_component { ____Placeholder_xkb_state_component } xkb_state_component ;

/* Variables and functions */
 unsigned int MOD_MAP_SIZE ; 
 int /*<<< orphan*/  RETROK_UNKNOWN ; 
 int /*<<< orphan*/  RETRO_DEVICE_KEYBOARD ; 
 int /*<<< orphan*/  XKB_KEY_DOWN ; 
 int /*<<< orphan*/  XKB_KEY_UP ; 
 scalar_t__ XKB_MOD_INVALID ; 
 scalar_t__ XKB_STATE_MODS_EFFECTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * mod_map_bit ; 
 int /*<<< orphan*/ * mod_map_idx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  xkb_state ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC6(int code, int value)
{
   unsigned i;
   const xkb_keysym_t *syms = NULL;
   unsigned num_syms        = 0;
   uint16_t mod             = 0;
   /* Convert Linux evdev to X11 (xkbcommon docs say so at least ...) */
   int xk_code              = code + 8;

   if (!xkb_state)
      return -1;

   if (value == 2) /* Repeat, release first explicitly. */
      FUNC5(xkb_state, xk_code, XKB_KEY_UP);

   if (value)
      num_syms = FUNC3(xkb_state, xk_code, &syms);

   if (value > 0)
      FUNC5(xkb_state, xk_code, XKB_KEY_DOWN);
   else
      FUNC5(xkb_state, xk_code, XKB_KEY_UP);

   if (!syms)
      return -1;

   /* Build mod state. */
   for (i = 0; i < MOD_MAP_SIZE; i++)
   {
      xkb_mod_index_t *map_idx = (xkb_mod_index_t*)&mod_map_idx[i];
      uint16_t        *map_bit = (uint16_t       *)&mod_map_bit[i];

      if (*map_idx != XKB_MOD_INVALID)
         mod |= FUNC4(
               xkb_state, *map_idx,
               (enum xkb_state_component)
               ((XKB_STATE_MODS_EFFECTIVE) > 0)) ? *map_bit : 0;
   }

   FUNC0(value, FUNC1(code),
         num_syms ? FUNC2(syms[0]) : 0, mod, RETRO_DEVICE_KEYBOARD);

   for (i = 1; i < num_syms; i++)
      FUNC0(value, RETROK_UNKNOWN,
            FUNC2(syms[i]), mod, RETRO_DEVICE_KEYBOARD);

   return 0;
}