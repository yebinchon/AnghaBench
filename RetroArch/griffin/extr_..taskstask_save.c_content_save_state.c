
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ retro_ctx_size_info_t ;
struct TYPE_5__ {void* data; scalar_t__ size; int path; } ;


 int MSG_BYTES ;
 int MSG_FAILED_TO_SAVE_STATE_TO ;
 int MSG_FILE_ALREADY_EXISTS_SAVING_TO_BACKUP_BUFFER ;
 int MSG_SAVING_STATE ;
 int MSG_STATE_SIZE ;
 int RARCH_ERR (char*,int ,char const*) ;
 int RARCH_LOG (char*,int ,...) ;
 int core_serialize_size (TYPE_1__*) ;
 int free (void*) ;
 void* get_serialized_data (char const*,scalar_t__) ;
 void* malloc (scalar_t__) ;
 int memcpy (void*,void*,scalar_t__) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ path_is_valid (char const*) ;
 int save_state_in_background ;
 int strlcpy (int ,char const*,int) ;
 int task_push_load_and_save_state (char const*,void*,scalar_t__,int,int) ;
 int task_push_save_state (char const*,void*,scalar_t__,int) ;
 TYPE_2__ undo_load_buf ;

bool content_save_state(const char *path, bool save_to_disk, bool autosave)
{
   retro_ctx_size_info_t info;
   void *data = ((void*)0);

   core_serialize_size(&info);

   if (info.size == 0)
      return 0;

   if (!save_state_in_background)
   {
      RARCH_LOG("%s: \"%s\".\n",
            msg_hash_to_str(MSG_SAVING_STATE),
            path);

      data = get_serialized_data(path, info.size);

      if (!data)
      {
         RARCH_ERR("%s \"%s\".\n",
               msg_hash_to_str(MSG_FAILED_TO_SAVE_STATE_TO),
               path);
         return 0;
      }

      RARCH_LOG("%s: %d %s.\n",
            msg_hash_to_str(MSG_STATE_SIZE),
            (int)info.size,
            msg_hash_to_str(MSG_BYTES));
   }

   if (save_to_disk)
   {
      if (path_is_valid(path) && !autosave)
      {



         RARCH_LOG("%s ...\n",
               msg_hash_to_str(MSG_FILE_ALREADY_EXISTS_SAVING_TO_BACKUP_BUFFER));

         task_push_load_and_save_state(path, data, info.size, 1, autosave);
      }
      else
         task_push_save_state(path, data, info.size, autosave);
   }
   else
   {
      if (!data)
         data = get_serialized_data(path, info.size);

      if (!data)
      {
         RARCH_ERR("%s \"%s\".\n",
               msg_hash_to_str(MSG_FAILED_TO_SAVE_STATE_TO),
               path);
         return 0;
      }




      if (undo_load_buf.data)
      {
         free(undo_load_buf.data);
         undo_load_buf.data = ((void*)0);
      }

      undo_load_buf.data = malloc(info.size);
      if (!undo_load_buf.data)
      {
         free(data);
         return 0;
      }

      memcpy(undo_load_buf.data, data, info.size);
      free(data);
      undo_load_buf.size = info.size;
      strlcpy(undo_load_buf.path, path, sizeof(undo_load_buf.path));
   }

   return 1;
}
