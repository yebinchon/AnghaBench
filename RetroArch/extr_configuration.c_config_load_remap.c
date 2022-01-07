
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* library_name; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef TYPE_2__ rarch_system_info_t ;
typedef int content_dir_name ;
typedef int config_file_t ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_GAME_REMAP_FILE_LOADED ;
 int PATH_MAX_LENGTH ;
 int RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE ;
 int RARCH_CTL_SET_REMAPS_CORE_ACTIVE ;
 int RARCH_CTL_SET_REMAPS_GAME_ACTIVE ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_PATH_BASENAME ;
 int * config_file_new_from_path_to_string (char*) ;
 int fill_pathname_join_special_ext (char*,char*,char const*,char const*,char*,size_t) ;
 int fill_pathname_parent_dir_name (char*,char const*,int) ;
 int free (char*) ;
 scalar_t__ input_remapping_load_file (int *,char*) ;
 int input_remapping_set_defaults (int) ;
 scalar_t__ malloc (int) ;
 int msg_hash_to_str (int ) ;
 char* path_basename (char const*) ;
 char* path_get (int ) ;
 int rarch_ctl (int ,int *) ;
 TYPE_2__* runloop_get_system_info () ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,size_t) ;

bool config_load_remap(const char *directory_input_remapping)
{
   size_t path_size = PATH_MAX_LENGTH * sizeof(char);
   config_file_t *new_conf = ((void*)0);
   char *remap_directory = ((void*)0);
   char *core_path = ((void*)0);
   char *game_path = ((void*)0);
   char *content_path = ((void*)0);
   rarch_system_info_t *system = runloop_get_system_info();
   const char *core_name = system ? system->info.library_name : ((void*)0);
   const char *rarch_path_basename = path_get(RARCH_PATH_BASENAME);
   const char *game_name = path_basename(rarch_path_basename);
   char content_dir_name[PATH_MAX_LENGTH];

   if (string_is_empty(core_name) || string_is_empty(game_name))
      return 0;



   if (string_is_empty(directory_input_remapping))
      return 0;

   if (!string_is_empty(rarch_path_basename))
      fill_pathname_parent_dir_name(content_dir_name,
            rarch_path_basename, sizeof(content_dir_name));


   remap_directory = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));

   core_path = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));

   game_path = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));

   content_path = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   remap_directory[0] = core_path[0] = game_path[0] = '\0';

   strlcpy(remap_directory, directory_input_remapping, path_size);
   RARCH_LOG("[Remaps]: remap directory: %s\n", remap_directory);


   fill_pathname_join_special_ext(core_path,
         remap_directory, core_name,
         core_name,
         ".rmp",
         path_size);

   fill_pathname_join_special_ext(content_path,
         remap_directory, core_name,
         content_dir_name,
         ".rmp",
         path_size);

   fill_pathname_join_special_ext(game_path,
         remap_directory, core_name,
         game_name,
         ".rmp",
         path_size);

   input_remapping_set_defaults(0);


   if ((new_conf = config_file_new_from_path_to_string(game_path)))
   {
      RARCH_LOG("[Remaps]: game-specific remap found at %s.\n", game_path);
      if (input_remapping_load_file(new_conf, game_path))
      {
         rarch_ctl(RARCH_CTL_SET_REMAPS_GAME_ACTIVE, ((void*)0));
         goto success;
      }
   }


   if ((new_conf = config_file_new_from_path_to_string(content_path)))
   {
      RARCH_LOG("[Remaps]: content-dir-specific remap found at %s.\n", content_path);
      if (input_remapping_load_file(new_conf, content_path))
      {
         rarch_ctl(RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE, ((void*)0));
         goto success;
      }
   }


   if ((new_conf = config_file_new_from_path_to_string(core_path)))
   {
      RARCH_LOG("[Remaps]: core-specific remap found at %s.\n", core_path);
      if (input_remapping_load_file(new_conf, core_path))
      {
         rarch_ctl(RARCH_CTL_SET_REMAPS_CORE_ACTIVE, ((void*)0));
         goto success;
      }
   }

   new_conf = ((void*)0);

   free(content_path);
   free(remap_directory);
   free(core_path);
   free(game_path);
   return 0;

success:
   runloop_msg_queue_push(msg_hash_to_str(
            MSG_GAME_REMAP_FILE_LOADED), 1, 100, 1,
         ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   free(content_path);
   free(remap_directory);
   free(core_path);
   free(game_path);
   return 1;
}
