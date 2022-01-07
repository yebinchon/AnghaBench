
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
struct archive_extract_userdata {int dummy; } ;
struct TYPE_7__ {int * title; void* user_data; int callback; int handler; TYPE_3__* state; void* frontend_userdata; } ;
typedef TYPE_2__ retro_task_t ;
typedef int retro_task_callback_t ;
struct TYPE_6__ {int type; } ;
struct TYPE_8__ {int * target_file; int * subdir; struct archive_extract_userdata* userdata; TYPE_1__ archive; int * valid_ext; int * target_dir; int * source_file; } ;
typedef TYPE_3__ decompress_state_t ;


 int ARCHIVE_TRANSFER_INIT ;
 int MSG_EXTRACTING ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char const*) ;
 int RARCH_WARN (char*,...) ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_3__*) ;
 char* msg_hash_to_str (int ) ;
 char* path_basename (char const*) ;
 char* path_get_extension (char const*) ;
 int path_is_valid (char const*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int * strdup (char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_is_equal_noncase (char const*,char*) ;
 scalar_t__ task_check_decompress (char const*) ;
 int task_decompress_handler ;
 int task_decompress_handler_subdir ;
 int task_decompress_handler_target_file ;
 int task_queue_push (TYPE_2__*) ;

bool task_push_decompress(
      const char *source_file,
      const char *target_dir,
      const char *target_file,
      const char *subdir,
      const char *valid_ext,
      retro_task_callback_t cb,
      void *user_data,
      void *frontend_userdata)
{
   char tmp[PATH_MAX_LENGTH];
   const char *ext = ((void*)0);
   decompress_state_t *s = ((void*)0);
   retro_task_t *t = ((void*)0);

   tmp[0] = '\0';

   if (string_is_empty(target_dir) || string_is_empty(source_file))
   {
      RARCH_WARN(
            "[decompress] Empty or null source file or"
            " target directory arguments.\n");
      return 0;
   }

   ext = path_get_extension(source_file);


   if (
         !path_is_valid(source_file) ||
         (
             !string_is_equal_noncase(ext, "zip")
          && !string_is_equal_noncase(ext, "apk")



         )
      )
   {
      RARCH_WARN(
            "[decompress] File '%s' does not exist"
            " or is not a compressed file.\n",
            source_file);
      return 0;
   }

   if (!valid_ext || !valid_ext[0])
      valid_ext = ((void*)0);

   if (task_check_decompress(source_file))
   {
      RARCH_LOG(
            "[decompress] File '%s' already being decompressed.\n",
            source_file);
      return 0;
   }

   RARCH_LOG("[decompress] File '%s.\n", source_file);

   s = (decompress_state_t*)calloc(1, sizeof(*s));

   if (!s)
      return 0;

   t = (retro_task_t*)calloc(1, sizeof(*t));

   if (!t)
   {
      free(s);
      return 0;
   }

   s->source_file = strdup(source_file);
   s->target_dir = strdup(target_dir);

   s->valid_ext = valid_ext ? strdup(valid_ext) : ((void*)0);
   s->archive.type = ARCHIVE_TRANSFER_INIT;
   s->userdata = (struct archive_extract_userdata*)
      calloc(1, sizeof(*s->userdata));

   t->frontend_userdata= frontend_userdata;

   t->state = s;
   t->handler = task_decompress_handler;

   if (!string_is_empty(subdir))
   {
      s->subdir = strdup(subdir);
      t->handler = task_decompress_handler_subdir;
   }
   else if (!string_is_empty(target_file))
   {
      s->target_file = strdup(target_file);
      t->handler = task_decompress_handler_target_file;
   }

   t->callback = cb;
   t->user_data = user_data;

   snprintf(tmp, sizeof(tmp), "%s '%s'",
         msg_hash_to_str(MSG_EXTRACTING),
         path_basename(source_file));

   t->title = strdup(tmp);

   task_queue_push(t);

   return 1;
}
