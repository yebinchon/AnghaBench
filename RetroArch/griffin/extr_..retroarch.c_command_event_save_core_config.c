
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_4__ {char* directory_menu_config; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int msg ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CANNOT_INFER_NEW_CONFIG_PATH ;
 int MSG_CONFIG_DIRECTORY_NOT_SET ;
 int MSG_USING_CORE_NAME_FOR_NEW_CONFIG ;
 int PATH_MAX_LENGTH ;
 int RARCH_ERR (char*,char*) ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_PATH_CONFIG ;
 int RARCH_PATH_CORE ;
 int RARCH_WARN (char*,char*) ;
 int command_event_save_config (char*,char*,int) ;
 TYPE_2__* configuration_settings ;
 int fill_dated_filename (char*,char*,size_t) ;
 int fill_pathname_base_noext (char*,char const*,size_t) ;
 int fill_pathname_basedir (char*,char*,size_t) ;
 int fill_pathname_join (char*,char*,char*,size_t) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 char* msg_hash_to_str (int ) ;
 char* path_get (int ) ;
 int path_is_empty (int ) ;
 scalar_t__ path_is_valid (char const*) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int runloop_overrides_active ;
 int snprintf (char*,int,char*,unsigned int) ;
 char* strdup (char*) ;
 scalar_t__ string_is_empty (char*) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static bool command_event_save_core_config(void)
{
   char msg[128];
   bool found_path = 0;
   bool overrides_active = 0;
   const char *core_path = ((void*)0);
   char *config_name = ((void*)0);
   char *config_path = ((void*)0);
   char *config_dir = ((void*)0);
   size_t config_size = PATH_MAX_LENGTH * sizeof(char);
   settings_t *settings = configuration_settings;

   msg[0] = '\0';

   if (settings && !string_is_empty(settings->paths.directory_menu_config))
      config_dir = strdup(settings->paths.directory_menu_config);
   else if (!path_is_empty(RARCH_PATH_CONFIG))
   {
      config_dir = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
      config_dir[0] = '\0';
      fill_pathname_basedir(config_dir, path_get(RARCH_PATH_CONFIG),
            config_size);
   }

   if (string_is_empty(config_dir))
   {
      runloop_msg_queue_push(msg_hash_to_str(MSG_CONFIG_DIRECTORY_NOT_SET), 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      RARCH_ERR("[config] %s\n", msg_hash_to_str(MSG_CONFIG_DIRECTORY_NOT_SET));
      free (config_dir);
      return 0;
   }

   core_path = path_get(RARCH_PATH_CORE);
   config_name = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   config_path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   config_name[0] = '\0';
   config_path[0] = '\0';


   if (path_is_valid(core_path))
   {
      unsigned i;
      RARCH_LOG("%s\n", msg_hash_to_str(MSG_USING_CORE_NAME_FOR_NEW_CONFIG));


      for (i = 0; i < 16; i++)
      {
         char tmp[64] = {0};

         fill_pathname_base_noext(
               config_name,
               core_path,
               config_size);

         fill_pathname_join(config_path, config_dir, config_name,
               config_size);

         if (i)
            snprintf(tmp, sizeof(tmp), "-%u", i);

         strlcat(tmp, ".cfg", sizeof(tmp));
         strlcat(config_path, tmp, config_size);

         if (!path_is_valid(config_path))
         {
            found_path = 1;
            break;
         }
      }
   }

   if (!found_path)
   {

      RARCH_WARN("[config] %s\n",
            msg_hash_to_str(MSG_CANNOT_INFER_NEW_CONFIG_PATH));
      fill_dated_filename(config_name, ".cfg", config_size);
      fill_pathname_join(config_path, config_dir, config_name,
            config_size);
   }

   if (runloop_overrides_active)
   {



      runloop_overrides_active = 0;
      overrides_active = 1;
   }

   command_event_save_config(config_path, msg, sizeof(msg));

   if (!string_is_empty(msg))
      runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   if (overrides_active)
      runloop_overrides_active = 1;
   else
      runloop_overrides_active = 0;

   free(config_dir);
   free(config_name);
   free(config_path);
   return 1;
}
