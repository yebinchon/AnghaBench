#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  joypad; } ;
typedef  TYPE_1__ uwp_input_t ;
struct retro_keybind {scalar_t__ key; int /*<<< orphan*/  valid; } ;
typedef  int /*<<< orphan*/  rarch_joypad_info_t ;
typedef  int int16_t ;

/* Variables and functions */
 scalar_t__ RETROK_LAST ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int16_t FUNC3(uwp_input_t *uwp,
   rarch_joypad_info_t joypad_info,
   const struct retro_keybind *binds,
   unsigned port, unsigned idx, unsigned id)
{
   const struct retro_keybind *bind_minus, *bind_plus;
   int16_t pressed_minus = 0, pressed_plus = 0, pressed_keyboard;
   unsigned id_minus = 0, id_plus = 0;

   /* First, process the keyboard bindings */
   FUNC0(idx, id, id_minus, id_plus);

   bind_minus = &binds[id_minus];
   bind_plus = &binds[id_plus];

   if (!bind_minus->valid || !bind_plus->valid)
      return 0;

   if ((bind_minus->key < RETROK_LAST) && FUNC2(bind_minus->key))
      pressed_minus = -0x7fff;
   if ((bind_plus->key < RETROK_LAST) && FUNC2(bind_plus->key))
      pressed_plus = 0x7fff;

   pressed_keyboard = pressed_plus + pressed_minus;
   if (pressed_keyboard != 0)
      return pressed_keyboard;

   /* Then, process the joypad bindings */
   return FUNC1(uwp->joypad, joypad_info, port, idx, id, binds);
}