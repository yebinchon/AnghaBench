#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ssize_t ;
struct TYPE_13__ {char* path; int size; int written; scalar_t__ state_slot; scalar_t__ undo_save; scalar_t__ data; scalar_t__ file; } ;
typedef  TYPE_1__ save_task_state_t ;
struct TYPE_14__ {scalar_t__ state; } ;
typedef  TYPE_2__ retro_task_t ;
typedef  int /*<<< orphan*/  new_msg ;
typedef  int /*<<< orphan*/  err ;
struct TYPE_15__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_FAILED_TO_SAVE_STATE_TO ; 
 int /*<<< orphan*/  MSG_FAILED_TO_UNDO_SAVE_STATE ; 
 int /*<<< orphan*/  MSG_RESTORED_OLD_SAVE_STATE ; 
 int /*<<< orphan*/  MSG_SAVED_STATE_TO_SLOT ; 
 int /*<<< orphan*/  MSG_SAVED_STATE_TO_SLOT_AUTO ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  SAVE_STATE_CHUNK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,scalar_t__,...) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,float) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 
 TYPE_3__ undo_save_buf ; 

__attribute__((used)) static void FUNC17(retro_task_t *task)
{
   int written;
   ssize_t remaining;
   save_task_state_t *state = (save_task_state_t*)task->state;

   if (!state->file)
   {
      state->file   = FUNC4(
            state->path, RETRO_VFS_FILE_ACCESS_WRITE,
            RETRO_VFS_FILE_ACCESS_HINT_NONE);

      if (!state->file)
         return;
   }

   if (!state->data)
      state->data  = FUNC3(state->path, state->size);

   remaining       = FUNC0(state->size - state->written, SAVE_STATE_CHUNK);

   if (state->data)
      written      = (int)FUNC5(state->file,
         (uint8_t*)state->data + state->written, remaining);
   else
      written      = 0;

   state->written += written;

   FUNC15(task, (state->written / (float)state->size) * 100);

   if (FUNC11(task) || written != remaining)
   {
      char err[8192];

      err[0] = '\0';

      if (state->undo_save)
      {
         FUNC1("%s \"%s\".\n",
            FUNC6(MSG_FAILED_TO_UNDO_SAVE_STATE),
            undo_save_buf.path);

         FUNC7(err, sizeof(err), "%s \"%s\".",
                  FUNC6(MSG_FAILED_TO_UNDO_SAVE_STATE),
                  "RAM");
      }
      else
         FUNC7(err, sizeof(err),
               "%s %s",
               FUNC6(MSG_FAILED_TO_SAVE_STATE_TO), state->path);

      FUNC14(task, FUNC8(err));
      FUNC13(task, state);
      return;
   }

   if (state->written == state->size)
   {
      char       *msg      = NULL;

      FUNC10(task);

      if (state->undo_save)
         msg = FUNC8(FUNC6(MSG_RESTORED_OLD_SAVE_STATE));
      else if (state->state_slot < 0)
         msg = FUNC8(FUNC6(MSG_SAVED_STATE_TO_SLOT_AUTO));
      else
      {
         char new_msg[128];
         new_msg[0] = '\0';

         FUNC7(new_msg, sizeof(new_msg), FUNC6(MSG_SAVED_STATE_TO_SLOT),
               state->state_slot);
         msg = FUNC8(new_msg);
      }

      if (!FUNC12(task) && msg)
      {
         FUNC16(task, msg);
         msg = NULL;
      }

      FUNC13(task, state);

      if (!FUNC9(msg))
         FUNC2(msg);

      return;
   }
}