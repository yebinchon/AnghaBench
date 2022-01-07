
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_file_t ;


 int FILE_PATH_MAIN_CONFIG ;
 char* GLOBAL_CONFIG_DIR ;
 int PATH_MAX_LENGTH ;
 int RARCH_ERR (char*,char*) ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_PATH_CONFIG ;
 int RARCH_WARN (char*,char*) ;
 int config_file_free (int *) ;
 int * config_file_new_alloc () ;
 int * config_file_new_from_path_to_string (char*) ;
 int config_file_write (int *,char*,int) ;
 int config_set_bool (int *,char*,int) ;
 char* file_path_str (int ) ;
 int fill_pathname_application_data (char*,size_t) ;
 int fill_pathname_application_dir (char*,size_t) ;
 int fill_pathname_basedir (char*,char*,size_t) ;
 int fill_pathname_home_dir (char*,size_t) ;
 int fill_pathname_join (char*,char*,char*,size_t) ;
 int fill_pathname_resolve_relative (char*,char*,char*,size_t) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ malloc (int) ;
 int path_mkdir (char*) ;
 int path_set (int ,char*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static config_file_t *open_default_config_file(void)
{
   bool has_application_data = 0;
   size_t path_size = PATH_MAX_LENGTH * sizeof(char);
   char *application_data = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   char *conf_path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   char *app_path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   config_file_t *conf = ((void*)0);

   (void)has_application_data;
   (void)path_size;

   application_data[0] = conf_path[0] = app_path[0] = '\0';
   has_application_data =
      fill_pathname_application_data(application_data,
            path_size);

   if (has_application_data)
   {
      fill_pathname_join(conf_path, application_data,
            file_path_str(FILE_PATH_MAIN_CONFIG), path_size);
      RARCH_LOG("Looking for config in: \"%s\".\n", conf_path);
      conf = config_file_new_from_path_to_string(conf_path);
   }


   if (!conf && getenv("HOME"))
   {
      fill_pathname_join(conf_path, getenv("HOME"),
            ".retroarch.cfg", path_size);
      RARCH_LOG("Looking for config in: \"%s\".\n", conf_path);
      conf = config_file_new_from_path_to_string(conf_path);
   }

   if (!conf && has_application_data)
   {
      bool dir_created = 0;
      char *basedir = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

      basedir[0] = '\0';



      strlcpy(conf_path, application_data, path_size);

      fill_pathname_basedir(basedir, conf_path, path_size);

      fill_pathname_join(conf_path, conf_path,
            file_path_str(FILE_PATH_MAIN_CONFIG), path_size);

      dir_created = path_mkdir(basedir);
      free(basedir);

      if (dir_created)
      {
         char *skeleton_conf = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
         bool saved = 0;

         skeleton_conf[0] = '\0';



         fill_pathname_join(skeleton_conf, GLOBAL_CONFIG_DIR,
            file_path_str(FILE_PATH_MAIN_CONFIG), path_size);

         conf = config_file_new_from_path_to_string(skeleton_conf);
         if (conf)
            RARCH_WARN("Config: using skeleton config \"%s\" as base for a new config file.\n", skeleton_conf);
         else
            conf = config_file_new_alloc();

         free(skeleton_conf);

         if (conf)
         {


            config_set_bool(conf, "config_save_on_exit", 1);
            saved = config_file_write(conf, conf_path, 1);
         }

         if (!saved)
         {

            RARCH_ERR("Failed to create new config file in: \"%s\".\n", conf_path);
            goto error;
         }

         RARCH_WARN("Config: Created new config file in: \"%s\".\n", conf_path);
      }
   }


   (void)application_data;
   (void)conf_path;
   (void)app_path;

   if (!conf)
      goto error;

   path_set(RARCH_PATH_CONFIG, conf_path);
   free(application_data);
   free(conf_path);
   free(app_path);

   return conf;

error:
   if (conf)
      config_file_free(conf);
   free(application_data);
   free(conf_path);
   free(app_path);
   return ((void*)0);
}
