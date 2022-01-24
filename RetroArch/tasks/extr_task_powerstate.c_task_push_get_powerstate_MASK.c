#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mute; int /*<<< orphan*/  callback; int /*<<< orphan*/  handler; int /*<<< orphan*/ * state; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ retro_task_t ;
typedef  int /*<<< orphan*/  powerstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_TYPE_NONE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  task_powerstate_cb ; 
 int /*<<< orphan*/  task_powerstate_handler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(void)
{
   retro_task_t *task  = FUNC2();
   powerstate_t *state = NULL;

   if (!task)
      return;
   state = (powerstate_t*)FUNC0(1, sizeof(*state));
   if (!state)
   {
      FUNC1(task);
      return;
   }

   task->type     = TASK_TYPE_NONE;
   task->state    = state;
   task->handler  = task_powerstate_handler;
   task->callback = task_powerstate_cb;
   task->mute     = true;

   FUNC3(task);
}