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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  on; } ;
struct btpad_queue_command {TYPE_1__ btstack_set_power_mode; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  btstack_set_power_mode_ptr ; 
 int /*<<< orphan*/  insert_position ; 

__attribute__((used)) static void FUNC2(
      struct btpad_queue_command *cmd, uint8_t on)
{
   if (!cmd)
      return;

   cmd->command                   = btstack_set_power_mode_ptr;
   cmd->btstack_set_power_mode.on = on;

   FUNC0(&insert_position);
   FUNC1();
}