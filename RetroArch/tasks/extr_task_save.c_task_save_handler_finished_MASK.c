#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* data; scalar_t__ undo_save; struct TYPE_9__* file; } ;
typedef  TYPE_1__ save_task_state_t ;
typedef  int /*<<< orphan*/  retro_task_t ;
struct TYPE_10__ {TYPE_1__* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ undo_save_buf ; 

__attribute__((used)) static void FUNC10(retro_task_t *task,
      save_task_state_t *state)
{
   save_task_state_t *task_data = NULL;

   FUNC9(task, true);

   FUNC2(state->file);
   FUNC1(state->file);

   if (!FUNC6(task) && FUNC5(task))
      FUNC8(task, FUNC4("Task canceled"));

   task_data = (save_task_state_t*)FUNC0(1, sizeof(*task_data));
   FUNC3(task_data, state, sizeof(*state));

   FUNC7(task, task_data);

   if (state->data)
   {
      if (state->undo_save && state->data == undo_save_buf.data)
         undo_save_buf.data = NULL;
      FUNC1(state->data);
      state->data = NULL;
   }

   FUNC1(state);
}