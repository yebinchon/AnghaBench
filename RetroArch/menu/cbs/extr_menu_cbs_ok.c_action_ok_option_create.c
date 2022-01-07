
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int game_path ;
typedef int config_file_t ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CORE_OPTIONS_FILE_CREATED_SUCCESSFULLY ;
 int MSG_ERROR_SAVING_CORE_OPTIONS_FILE ;
 int PATH_MAX_LENGTH ;
 int RARCH_PATH_CORE_OPTIONS ;
 int config_file_free (int *) ;
 int * config_file_new_alloc () ;
 int * config_file_new_from_path_to_string (char*) ;
 scalar_t__ config_file_write (int *,char*,int) ;
 int msg_hash_to_str (int ) ;
 int path_set (int ,char*) ;
 int retroarch_validate_game_options (char*,int,int) ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;

__attribute__((used)) static int action_ok_option_create(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char game_path[PATH_MAX_LENGTH];
   config_file_t *conf = ((void*)0);

   game_path[0] = '\0';

   if (!retroarch_validate_game_options(game_path, sizeof(game_path), 1))
   {
      runloop_msg_queue_push(
            msg_hash_to_str(MSG_ERROR_SAVING_CORE_OPTIONS_FILE),
            1, 100, 1,
            ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      return 0;
   }

   if (!(conf = config_file_new_from_path_to_string(game_path)))
      if (!(conf = config_file_new_alloc()))
         return 0;

   if (config_file_write(conf, game_path, 1))
   {
      runloop_msg_queue_push(
            msg_hash_to_str(MSG_CORE_OPTIONS_FILE_CREATED_SUCCESSFULLY),
            1, 100, 1,
            ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      path_set(RARCH_PATH_CORE_OPTIONS, game_path);
   }
   config_file_free(conf);

   return 0;
}
