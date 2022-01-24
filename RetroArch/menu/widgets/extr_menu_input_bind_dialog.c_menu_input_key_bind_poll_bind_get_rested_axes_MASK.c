#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct menu_bind_state {TYPE_1__* axis_state; } ;
typedef  int /*<<< orphan*/  input_device_driver_t ;
struct TYPE_2__ {void** rested_axes; } ;

/* Variables and functions */
 unsigned int MENU_MAX_AXES ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/  const*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(
      struct menu_bind_state *state, unsigned port)
{
   unsigned a;
   const input_device_driver_t     *joypad =
      FUNC0();
   const input_device_driver_t *sec_joypad =
      FUNC1();

   if (!state || !joypad)
      return;

   /* poll only the relevant port */
   for (a = 0; a < MENU_MAX_AXES; a++)
      state->axis_state[port].rested_axes[a] =
         FUNC2(joypad, port, a);

   if (sec_joypad)
   {
        /* poll only the relevant port */
        for (a = 0; a < MENU_MAX_AXES; a++)
            state->axis_state[port].rested_axes[a] =
               FUNC2(sec_joypad, port, a);
   }
}