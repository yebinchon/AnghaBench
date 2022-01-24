#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_PATH_MAIN_CONFIG ; 
 char* GLOBAL_CONFIG_DIR ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,size_t) ; 

__attribute__((used)) static config_file_t *FUNC22(void)
{
   bool has_application_data              = false;
   size_t path_size                       = PATH_MAX_LENGTH * sizeof(char);
   char *application_data                 = (char*)FUNC17(PATH_MAX_LENGTH * sizeof(char));
   char *conf_path                        = (char*)FUNC17(PATH_MAX_LENGTH * sizeof(char));
   char *app_path                         = (char*)FUNC17(PATH_MAX_LENGTH * sizeof(char));
   config_file_t *conf                    = NULL;

   (void)has_application_data;
   (void)path_size;

   application_data[0] = conf_path[0] = app_path[0] = '\0';

#if defined(_WIN32) && !defined(_XBOX)
#if defined(__WINRT__) || defined(WINAPI_FAMILY) && WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP
   /* On UWP, the app install directory is not writable so use the writable LocalState dir instead */
   fill_pathname_home_dir(app_path, path_size);
#else
   fill_pathname_application_dir(app_path, path_size);
#endif
   fill_pathname_resolve_relative(conf_path, app_path,
         file_path_str(FILE_PATH_MAIN_CONFIG), path_size);

   conf = config_file_new_from_path_to_string(conf_path);

   if (!conf)
   {
      if (fill_pathname_application_data(application_data,
            path_size))
      {
         fill_pathname_join(conf_path, application_data,
               file_path_str(FILE_PATH_MAIN_CONFIG), path_size);
         conf = config_file_new_from_path_to_string(conf_path);
      }
   }

   if (!conf)
   {
      bool saved = false;

      /* Try to create a new config file. */
      conf = config_file_new_alloc();

      if (conf)
      {
         /* Since this is a clean config file, we can
          * safely use config_save_on_exit. */
         fill_pathname_resolve_relative(conf_path, app_path,
               file_path_str(FILE_PATH_MAIN_CONFIG), path_size);
         config_set_bool(conf, "config_save_on_exit", true);
         saved = config_file_write(conf, conf_path, true);
      }

      if (!saved)
      {
         /* WARN here to make sure user has a good chance of seeing it. */
         RARCH_ERR("Failed to create new config file in: \"%s\".\n",
               conf_path);
         goto error;
      }

      RARCH_WARN("Created new config file in: \"%s\".\n", conf_path);
   }
#elif defined(OSX)
   if (!fill_pathname_application_data(application_data,
            path_size))
      goto error;

   /* Group config file with menu configs, remaps, etc: */
   strlcat(application_data, "/config", path_size);

   path_mkdir(application_data);

   fill_pathname_join(conf_path, application_data,
         file_path_str(FILE_PATH_MAIN_CONFIG), path_size);
   conf = config_file_new_from_path_to_string(conf_path);

   if (!conf)
   {
      bool saved = false;
      conf       = config_file_new_alloc();

      if (conf)
      {
         config_set_bool(conf, "config_save_on_exit", true);
         saved = config_file_write(conf, conf_path, true);
      }

      if (!saved)
      {
         /* WARN here to make sure user has a good chance of seeing it. */
         RARCH_ERR("Failed to create new config file in: \"%s\".\n",
               conf_path);
         goto error;
      }

      RARCH_WARN("Created new config file in: \"%s\".\n", conf_path);
   }
#elif !defined(RARCH_CONSOLE)
   has_application_data =
      FUNC9(application_data,
            path_size);

   if (has_application_data)
   {
      FUNC13(conf_path, application_data,
            FUNC8(FILE_PATH_MAIN_CONFIG), path_size);
      FUNC1("Looking for config in: \"%s\".\n", conf_path);
      conf = FUNC5(conf_path);
   }

   /* Fallback to $HOME/.retroarch.cfg. */
   if (!conf && FUNC16("HOME"))
   {
      FUNC13(conf_path, FUNC16("HOME"),
            ".retroarch.cfg", path_size);
      FUNC1("Looking for config in: \"%s\".\n", conf_path);
      conf = FUNC5(conf_path);
   }

   if (!conf && has_application_data)
   {
      bool dir_created = false;
      char *basedir    = (char*)FUNC17(PATH_MAX_LENGTH * sizeof(char));

      basedir[0]       = '\0';

      /* Try to create a new config file. */

      FUNC21(conf_path, application_data, path_size);

      FUNC11(basedir, conf_path, path_size);

      FUNC13(conf_path, conf_path,
            FUNC8(FILE_PATH_MAIN_CONFIG), path_size);

      dir_created = FUNC18(basedir);
      FUNC15(basedir);

      if (dir_created)
      {
         char *skeleton_conf = (char*)FUNC17(PATH_MAX_LENGTH * sizeof(char));
         bool saved          = false;

         skeleton_conf[0] = '\0';

         /* Build a retroarch.cfg path from the 
          * global config directory (/etc). */
         FUNC13(skeleton_conf, GLOBAL_CONFIG_DIR,
            FUNC8(FILE_PATH_MAIN_CONFIG), path_size);

         conf = FUNC5(skeleton_conf);
         if (conf)
            FUNC2("Config: using skeleton config \"%s\" as base for a new config file.\n", skeleton_conf);
         else
            conf = FUNC4();

         FUNC15(skeleton_conf);

         if (conf)
         {
            /* Since this is a clean config file, we can 
             * safely use config_save_on_exit. */
            FUNC7(conf, "config_save_on_exit", true);
            saved = FUNC6(conf, conf_path, true);
         }

         if (!saved)
         {
            /* WARN here to make sure user has a good chance of seeing it. */
            FUNC0("Failed to create new config file in: \"%s\".\n", conf_path);
            goto error;
         }

         FUNC2("Config: Created new config file in: \"%s\".\n", conf_path);
      }
   }
#endif

   (void)application_data;
   (void)conf_path;
   (void)app_path;

   if (!conf)
      goto error;

   FUNC19(RARCH_PATH_CONFIG, conf_path);
   FUNC15(application_data);
   FUNC15(conf_path);
   FUNC15(app_path);

   return conf;

error:
   if (conf)
      FUNC3(conf);
   FUNC15(application_data);
   FUNC15(conf_path);
   FUNC15(app_path);
   return NULL;
}