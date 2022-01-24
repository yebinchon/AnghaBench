#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_12__ {char* path; int size; char* data; int bytes_read; int /*<<< orphan*/  state_slot; scalar_t__ autoload; scalar_t__ file; } ;
typedef  TYPE_1__ save_task_state_t ;
struct TYPE_13__ {scalar_t__ state; } ;
typedef  TYPE_2__ retro_task_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_AUTOLOADING_SAVESTATE_FROM ; 
 int /*<<< orphan*/  MSG_FAILED ; 
 int /*<<< orphan*/  MSG_FAILED_TO_LOAD_STATE ; 
 int /*<<< orphan*/  MSG_LOADED_STATE_FROM_SLOT ; 
 int /*<<< orphan*/  MSG_LOADED_STATE_FROM_SLOT_AUTO ; 
 int /*<<< orphan*/  MSG_SUCCEEDED ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  SAVE_STATE_CHUNK ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 char* FUNC7 (size_t) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,float) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(retro_task_t *task)
{
   ssize_t remaining, bytes_read;
   save_task_state_t *state = (save_task_state_t*)task->state;

   if (!state->file)
   {
      state->file = FUNC2(state->path,
            RETRO_VFS_FILE_ACCESS_READ,
            RETRO_VFS_FILE_ACCESS_HINT_NONE);

      if (!state->file)
         goto error;

      if (FUNC5(state->file, 0, SEEK_END) != 0)
         goto error;

      state->size = FUNC6(state->file);

      if (state->size < 0)
         goto error;

      FUNC4(state->file);

      state->data = FUNC7(state->size + 1);

      if (!state->data)
         goto error;
   }

   remaining          = FUNC0(state->size - state->bytes_read, SAVE_STATE_CHUNK);
   bytes_read         = FUNC3(state->file,
         (uint8_t*)state->data + state->bytes_read, remaining);
   state->bytes_read += bytes_read;

   if (state->size > 0)
      FUNC17(task, (state->bytes_read / (float)state->size) * 100);

   if (FUNC13(task) || bytes_read != remaining)
   {
      if (state->autoload)
      {
         char *msg = (char*)FUNC7(8192 * sizeof(char));

         msg[0] = '\0';

         FUNC9(msg,
               8192 * sizeof(char),
               "%s \"%s\" %s.",
               FUNC8(MSG_AUTOLOADING_SAVESTATE_FROM),
               state->path,
               FUNC8(MSG_FAILED));
         FUNC16(task, FUNC10(msg));
         FUNC1(msg);
      }
      else
         FUNC16(task, FUNC10(FUNC8(MSG_FAILED_TO_LOAD_STATE)));

      FUNC1(state->data);
      state->data = NULL;
      FUNC15(task, state);
      return;
   }

   if (state->bytes_read == state->size)
   {
      size_t sizeof_msg = 8192;
      char         *msg = (char*)FUNC7(sizeof_msg * sizeof(char));

      msg[0]            = '\0';

      FUNC12(task);

      if (state->autoload)
         FUNC9(msg, sizeof_msg,
               "%s \"%s\" %s.",
               FUNC8(MSG_AUTOLOADING_SAVESTATE_FROM),
               state->path,
               FUNC8(MSG_SUCCEEDED));
      else
      {
         if (state->state_slot < 0)
            FUNC11(msg, FUNC8(MSG_LOADED_STATE_FROM_SLOT_AUTO),
                 sizeof_msg);
         else
            FUNC9(msg, sizeof_msg,
                  FUNC8(MSG_LOADED_STATE_FROM_SLOT),
                  state->state_slot);

      }

      if (!FUNC14(task))
         FUNC18(task, FUNC10(msg));

      FUNC1(msg);
      FUNC15(task, state);

      return;
   }

   return;

error:
   FUNC15(task, state);
}