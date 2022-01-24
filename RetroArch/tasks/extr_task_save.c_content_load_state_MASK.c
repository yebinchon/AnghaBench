#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  state_slot; } ;
struct TYPE_10__ {TYPE_1__ ints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_11__ {int load_to_backup_buffer; int autoload; int /*<<< orphan*/  title; int /*<<< orphan*/  callback; int /*<<< orphan*/  handler; struct TYPE_11__* state; int /*<<< orphan*/  type; int /*<<< orphan*/  has_valid_framebuffer; int /*<<< orphan*/  state_slot; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ save_task_state_t ;
typedef  TYPE_3__ retro_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_LOADING_STATE ; 
 int /*<<< orphan*/  TASK_TYPE_BLOCKING ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  content_load_state_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_3__* FUNC6 () ; 
 int /*<<< orphan*/  task_load_handler ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

bool FUNC9(const char *path,
      bool load_to_backup_buffer, bool autoload)
{
   retro_task_t       *task     = FUNC6();
   save_task_state_t *state     = (save_task_state_t*)FUNC0(1, sizeof(*state));
   settings_t *settings         = FUNC1();

   if (!task || !state)
      goto error;

   FUNC5(state->path, path, sizeof(state->path));
   state->load_to_backup_buffer = load_to_backup_buffer;
   state->autoload              = autoload;
   state->state_slot            = settings->ints.state_slot;
   state->has_valid_framebuffer = 
      FUNC8();

   task->type                   = TASK_TYPE_BLOCKING;
   task->state                  = state;
   task->handler                = task_load_handler;
   task->callback               = content_load_state_cb;
   task->title                  = FUNC4(FUNC3(MSG_LOADING_STATE));

   FUNC7(task);

   return true;

error:
   if (state)
      FUNC2(state);
   if (task)
      FUNC2(task);

   return false;
}