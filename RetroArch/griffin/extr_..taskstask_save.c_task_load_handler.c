
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_12__ {char* path; int size; char* data; int bytes_read; int state_slot; scalar_t__ autoload; scalar_t__ file; } ;
typedef TYPE_1__ save_task_state_t ;
struct TYPE_13__ {scalar_t__ state; } ;
typedef TYPE_2__ retro_task_t ;


 scalar_t__ MIN (int,int ) ;
 int MSG_AUTOLOADING_SAVESTATE_FROM ;
 int MSG_FAILED ;
 int MSG_FAILED_TO_LOAD_STATE ;
 int MSG_LOADED_STATE_FROM_SLOT ;
 int MSG_LOADED_STATE_FROM_SLOT_AUTO ;
 int MSG_SUCCEEDED ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int SAVE_STATE_CHUNK ;
 int SEEK_END ;
 int free (char*) ;
 scalar_t__ intfstream_open_file (char*,int ,int ) ;
 scalar_t__ intfstream_read (scalar_t__,int *,scalar_t__) ;
 int intfstream_rewind (scalar_t__) ;
 scalar_t__ intfstream_seek (scalar_t__,int ,int ) ;
 int intfstream_tell (scalar_t__) ;
 char* malloc (size_t) ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,char*,...) ;
 int strdup (char*) ;
 int strlcpy (char*,char*,size_t) ;
 int task_free_title (TYPE_2__*) ;
 scalar_t__ task_get_cancelled (TYPE_2__*) ;
 int task_get_mute (TYPE_2__*) ;
 int task_load_handler_finished (TYPE_2__*,TYPE_1__*) ;
 int task_set_error (TYPE_2__*,int ) ;
 int task_set_progress (TYPE_2__*,float) ;
 int task_set_title (TYPE_2__*,int ) ;

__attribute__((used)) static void task_load_handler(retro_task_t *task)
{
   ssize_t remaining, bytes_read;
   save_task_state_t *state = (save_task_state_t*)task->state;

   if (!state->file)
   {
      state->file = intfstream_open_file(state->path,
            RETRO_VFS_FILE_ACCESS_READ,
            RETRO_VFS_FILE_ACCESS_HINT_NONE);

      if (!state->file)
         goto error;

      if (intfstream_seek(state->file, 0, SEEK_END) != 0)
         goto error;

      state->size = intfstream_tell(state->file);

      if (state->size < 0)
         goto error;

      intfstream_rewind(state->file);

      state->data = malloc(state->size + 1);

      if (!state->data)
         goto error;
   }

   remaining = MIN(state->size - state->bytes_read, SAVE_STATE_CHUNK);
   bytes_read = intfstream_read(state->file,
         (uint8_t*)state->data + state->bytes_read, remaining);
   state->bytes_read += bytes_read;

   if (state->size > 0)
      task_set_progress(task, (state->bytes_read / (float)state->size) * 100);

   if (task_get_cancelled(task) || bytes_read != remaining)
   {
      if (state->autoload)
      {
         char *msg = (char*)malloc(8192 * sizeof(char));

         msg[0] = '\0';

         snprintf(msg,
               8192 * sizeof(char),
               "%s \"%s\" %s.",
               msg_hash_to_str(MSG_AUTOLOADING_SAVESTATE_FROM),
               state->path,
               msg_hash_to_str(MSG_FAILED));
         task_set_error(task, strdup(msg));
         free(msg);
      }
      else
         task_set_error(task, strdup(msg_hash_to_str(MSG_FAILED_TO_LOAD_STATE)));

      free(state->data);
      state->data = ((void*)0);
      task_load_handler_finished(task, state);
      return;
   }

   if (state->bytes_read == state->size)
   {
      size_t sizeof_msg = 8192;
      char *msg = (char*)malloc(sizeof_msg * sizeof(char));

      msg[0] = '\0';

      task_free_title(task);

      if (state->autoload)
         snprintf(msg, sizeof_msg,
               "%s \"%s\" %s.",
               msg_hash_to_str(MSG_AUTOLOADING_SAVESTATE_FROM),
               state->path,
               msg_hash_to_str(MSG_SUCCEEDED));
      else
      {
         if (state->state_slot < 0)
            strlcpy(msg, msg_hash_to_str(MSG_LOADED_STATE_FROM_SLOT_AUTO),
                 sizeof_msg);
         else
            snprintf(msg, sizeof_msg,
                  msg_hash_to_str(MSG_LOADED_STATE_FROM_SLOT),
                  state->state_slot);

      }

      if (!task_get_mute(task))
         task_set_title(task, strdup(msg));

      free(msg);
      task_load_handler_finished(task, state);

      return;
   }

   return;

error:
   task_load_handler_finished(task, state);
}
