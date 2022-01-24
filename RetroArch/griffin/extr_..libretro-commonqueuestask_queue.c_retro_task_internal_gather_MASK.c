#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* title; struct TYPE_8__* error; int /*<<< orphan*/  (* cleanup ) (TYPE_1__*) ;int /*<<< orphan*/  user_data; int /*<<< orphan*/  task_data; int /*<<< orphan*/  (* callback ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ;} ;
typedef  TYPE_1__ retro_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  tasks_finished ; 

__attribute__((used)) static void FUNC5(void)
{
   retro_task_t *task = NULL;
   while ((task = FUNC3(&tasks_finished)) != NULL)
   {
      FUNC4(task);

      if (task->callback)
         task->callback(task, task->task_data, task->user_data, task->error);

      if (task->cleanup)
          task->cleanup(task);

      if (task->error)
         FUNC0(task->error);

      if (task->title)
         FUNC0(task->title);

      FUNC0(task);
   }
}