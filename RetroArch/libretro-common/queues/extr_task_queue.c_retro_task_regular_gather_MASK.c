#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ finished; int /*<<< orphan*/  (* handler ) (TYPE_1__*) ;struct TYPE_7__* next; } ;
typedef  TYPE_1__ retro_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tasks_finished ; 
 int /*<<< orphan*/  tasks_running ; 

__attribute__((used)) static void FUNC6(void)
{
   retro_task_t *task  = NULL;
   retro_task_t *queue = NULL;
   retro_task_t *next  = NULL;

   while ((task = FUNC3(&tasks_running)) != NULL)
   {
      task->next = queue;
      queue = task;
   }

   for (task = queue; task; task = next)
   {
      next = task->next;
      task->handler(task);

      FUNC4(task);

      if (task->finished)
         FUNC5(&tasks_finished, task);
      else
         FUNC1(task);
   }

   FUNC0();
}