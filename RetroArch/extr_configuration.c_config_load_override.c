
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


 int APPLICATION_SPECIAL_DIRECTORY_CONFIG ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CONFIG_OVERRIDE_LOADED ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,...) ;
 int RARCH_OVERRIDE_SETTING_SAVE_PATH ;
 int RARCH_OVERRIDE_SETTING_STATE_PATH ;
 int RARCH_PATH_BASENAME ;
 int RARCH_PATH_CONFIG ;
 int RARCH_PATH_CONFIG_APPEND ;
 int RARCH_PATH_CORE ;
 scalar_t__ config_file_exists (char*) ;
 int config_get_ptr () ;
 int config_load_file (int ,char*,int ) ;
 int fill_pathname_application_special (char*,size_t,int ) ;
 int fill_pathname_join_special_ext (char*,char*,char const*,char const*,char*,size_t) ;
 int fill_pathname_parent_dir_name (char*,char const*,int) ;
 int free (char*) ;
 int global_get_ptr () ;
 scalar_t__ malloc (int) ;
 int msg_hash_to_str (int ) ;
 char* path_basename (char const*) ;
 int path_clear (int ) ;
 char* path_get (int ) ;
 int path_set (int ,char*) ;
 int retroarch_override_setting_set (int ,int *) ;
 int retroarch_override_setting_unset (int ,int *) ;
 TYPE_2__* runloop_get_system_info () ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;

bool config_load_override(void)
{
   size_t path_size = PATH_MAX_LENGTH * sizeof(char);
   char *buf = ((void*)0);
   char *core_path = ((void*)0);
   char *game_path = ((void*)0);
   char *content_path = ((void*)0);
   char *config_directory = ((void*)0);
   bool should_append = 0;
   rarch_system_info_t *system = runloop_get_system_info();
   const char *core_name = system ?
      system->info.library_name : ((void*)0);
   const char *rarch_path_basename = path_get(RARCH_PATH_BASENAME);
   const char *game_name = path_basename(rarch_path_basename);
   char content_dir_name[PATH_MAX_LENGTH];

   if (!string_is_empty(rarch_path_basename))
      fill_pathname_parent_dir_name(content_dir_name,
            rarch_path_basename, sizeof(content_dir_name));

   if (string_is_empty(core_name) || string_is_empty(game_name))
      return 0;

   game_path = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   core_path = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   content_path = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   buf = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   config_directory = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));
   config_directory[0] = core_path[0] = game_path[0] = '\0';

   fill_pathname_application_special(config_directory, path_size,
         APPLICATION_SPECIAL_DIRECTORY_CONFIG);


   fill_pathname_join_special_ext(game_path,
         config_directory, core_name,
         game_name,
         ".cfg",
         path_size);

   fill_pathname_join_special_ext(content_path,
      config_directory, core_name,
      content_dir_name,
      ".cfg",
      path_size);

   fill_pathname_join_special_ext(core_path,
         config_directory, core_name,
         core_name,
         ".cfg",
         path_size);

   free(config_directory);



   if (config_file_exists(core_path))
   {
      RARCH_LOG("[Overrides] core-specific overrides found at %s.\n",
            core_path);

      path_set(RARCH_PATH_CONFIG_APPEND, core_path);

      should_append = 1;
   }
   else
      RARCH_LOG("[Overrides] no core-specific overrides found at %s.\n",
            core_path);



   if (config_file_exists(content_path))
   {
      char *temp_path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

      temp_path[0] = '\0';

      RARCH_LOG("[Overrides] content-dir-specific overrides found at %s.\n",
            game_path);

      if (should_append)
      {
         RARCH_LOG("[Overrides] content-dir-specific overrides stacking on top of previous overrides.\n");
         strlcpy(temp_path, path_get(RARCH_PATH_CONFIG_APPEND), path_size);
         strlcat(temp_path, "|", path_size);
         strlcat(temp_path, content_path, path_size);
      }
      else
         strlcpy(temp_path, content_path, path_size);

      path_set(RARCH_PATH_CONFIG_APPEND, temp_path);

      free(temp_path);

      should_append = 1;
   }
   else
      RARCH_LOG("[Overrides] no content-dir-specific overrides found at %s.\n",
         content_path);



   if (config_file_exists(game_path))
   {
      char *temp_path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

      temp_path[0] = '\0';

      RARCH_LOG("[Overrides] game-specific overrides found at %s.\n",
            game_path);

      if (should_append)
      {
         RARCH_LOG("[Overrides] game-specific overrides stacking on top of previous overrides\n");
         strlcpy(temp_path, path_get(RARCH_PATH_CONFIG_APPEND), path_size);
         strlcat(temp_path, "|", path_size);
         strlcat(temp_path, game_path, path_size);
      }
      else
         strlcpy(temp_path, game_path, path_size);

      path_set(RARCH_PATH_CONFIG_APPEND, temp_path);

      free(temp_path);

      should_append = 1;
   }
   else
      RARCH_LOG("[Overrides] no game-specific overrides found at %s.\n",
            game_path);

   if (!should_append)
      goto error;



   buf[0] = '\0';



   strlcpy(buf, path_get(RARCH_PATH_CORE), path_size);


   retroarch_override_setting_unset(RARCH_OVERRIDE_SETTING_STATE_PATH, ((void*)0));
   retroarch_override_setting_unset(RARCH_OVERRIDE_SETTING_SAVE_PATH, ((void*)0));

   if (!config_load_file(global_get_ptr(),
            path_get(RARCH_PATH_CONFIG), config_get_ptr()))
      goto error;



   path_set(RARCH_PATH_CORE, buf);
   runloop_msg_queue_push(msg_hash_to_str(MSG_CONFIG_OVERRIDE_LOADED),
         1, 100, 1,
         ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);


   retroarch_override_setting_set(RARCH_OVERRIDE_SETTING_STATE_PATH, ((void*)0));
   retroarch_override_setting_set(RARCH_OVERRIDE_SETTING_SAVE_PATH, ((void*)0));

   path_clear(RARCH_PATH_CONFIG_APPEND);

   free(buf);
   free(core_path);
   free(content_path);
   free(game_path);
   return 1;

error:
   free(buf);
   free(core_path);
   free(content_path);
   free(game_path);
   return 0;
}
