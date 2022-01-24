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
struct retro_keybind {int dummy; } ;
struct menu_bind_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_ACTION_MAX_USERS ; 
 unsigned int* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct menu_bind_state*,struct menu_bind_state*,struct retro_keybind*,unsigned int) ; 

__attribute__((used)) static bool FUNC2(
      struct menu_bind_state *state,
      struct menu_bind_state *new_state,
      struct retro_keybind * output
   )
{
   unsigned i;
   unsigned max_users   = *(FUNC0(INPUT_ACTION_MAX_USERS));

   if (!state || !new_state)
      return false;

   for (i = 0; i < max_users; i++)
   {
      if (!FUNC1( state, new_state, output, i))
        continue;

      return true;
   }

   return false;
}