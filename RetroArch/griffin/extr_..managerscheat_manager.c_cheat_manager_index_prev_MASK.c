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
struct TYPE_3__ {scalar_t__ size; scalar_t__ ptr; int /*<<< orphan*/  cheats; } ;

/* Variables and functions */
 TYPE_1__ cheat_manager_state ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 

void FUNC1(void)
{
   if (!cheat_manager_state.cheats || cheat_manager_state.size == 0)
      return;

   if (cheat_manager_state.ptr == 0)
      cheat_manager_state.ptr = cheat_manager_state.size - 1;
   else
      cheat_manager_state.ptr--;

   FUNC0(&cheat_manager_state, cheat_manager_state.ptr);
}