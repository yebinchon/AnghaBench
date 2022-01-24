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
struct TYPE_4__ {scalar_t__ size; } ;
typedef  TYPE_1__ retro_ctx_size_info_t ;
struct TYPE_5__ {void* data; scalar_t__ size; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_BYTES ; 
 int /*<<< orphan*/  MSG_FAILED_TO_SAVE_STATE_TO ; 
 int /*<<< orphan*/  MSG_FILE_ALREADY_EXISTS_SAVING_TO_BACKUP_BUFFER ; 
 int /*<<< orphan*/  MSG_SAVING_STATE ; 
 int /*<<< orphan*/  MSG_STATE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (char const*,scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  save_state_in_background ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,void*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,void*,scalar_t__,int) ; 
 TYPE_2__ undo_load_buf ; 

bool FUNC12(const char *path, bool save_to_disk, bool autosave)
{
   retro_ctx_size_info_t info;
   void *data  = NULL;

   FUNC2(&info);

   if (info.size == 0)
      return false;

   if (!save_state_in_background)
   {
      FUNC1("%s: \"%s\".\n",
            FUNC7(MSG_SAVING_STATE),
            path);

      data = FUNC4(path, info.size);

      if (!data)
      {
         FUNC0("%s \"%s\".\n",
               FUNC7(MSG_FAILED_TO_SAVE_STATE_TO),
               path);
         return false;
      }

      FUNC1("%s: %d %s.\n",
            FUNC7(MSG_STATE_SIZE),
            (int)info.size,
            FUNC7(MSG_BYTES));
   }

   if (save_to_disk)
   {
      if (FUNC8(path) && !autosave)
      {
         /* Before overwritting the savestate file, load it into a buffer
         to allow undo_save_state() to work */
         /* TODO/FIXME - Use msg_hash_to_str here */
         FUNC1("%s ...\n",
               FUNC7(MSG_FILE_ALREADY_EXISTS_SAVING_TO_BACKUP_BUFFER));

         FUNC10(path, data, info.size, true, autosave);
      }
      else
         FUNC11(path, data, info.size, autosave);
   }
   else
   {
      if (!data)
         data = FUNC4(path, info.size);

      if (!data)
      {
         FUNC0("%s \"%s\".\n",
               FUNC7(MSG_FAILED_TO_SAVE_STATE_TO),
               path);
         return false;
      }
      /* save_to_disk is false, which means we are saving the state
      in undo_load_buf to allow content_undo_load_state() to restore it */

      /* If we were holding onto an old state already, clean it up first */
      if (undo_load_buf.data)
      {
         FUNC3(undo_load_buf.data);
         undo_load_buf.data = NULL;
      }

      undo_load_buf.data = FUNC5(info.size);
      if (!undo_load_buf.data)
      {
         FUNC3(data);
         return false;
      }

      FUNC6(undo_load_buf.data, data, info.size);
      FUNC3(data);
      undo_load_buf.size = info.size;
      FUNC9(undo_load_buf.path, path, sizeof(undo_load_buf.path));
   }

   return true;
}