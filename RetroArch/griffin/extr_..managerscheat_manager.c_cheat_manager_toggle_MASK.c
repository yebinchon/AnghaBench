#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ size; size_t ptr; TYPE_1__* cheats; } ;
struct TYPE_4__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ cheat_manager_state ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 

void FUNC2(void)
{
   if (!cheat_manager_state.cheats || cheat_manager_state.size == 0)
      return;

   cheat_manager_state.cheats[cheat_manager_state.ptr].state ^= true;
   FUNC0();
   FUNC1(&cheat_manager_state, cheat_manager_state.ptr);
}