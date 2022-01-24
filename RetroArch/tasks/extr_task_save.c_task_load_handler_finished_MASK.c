#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* file; } ;
typedef  TYPE_1__ save_task_state_t ;
typedef  int /*<<< orphan*/  retro_task_t ;
typedef  int /*<<< orphan*/  load_task_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(retro_task_t *task,
      save_task_state_t *state)
{
   load_task_data_t *task_data = NULL;

   FUNC9(task, true);

   if (state->file)
   {
      FUNC2(state->file);
      FUNC1(state->file);
   }

   if (!FUNC6(task) && FUNC5(task))
      FUNC8(task, FUNC4("Task canceled"));

   task_data = (load_task_data_t*)FUNC0(1, sizeof(*task_data));

   if (!task_data)
      return;

   FUNC3(task_data, state, sizeof(*task_data));

   FUNC7(task, task_data);

   FUNC1(state);
}