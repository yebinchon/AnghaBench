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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {char* directory_menu_config; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_CANNOT_INFER_NEW_CONFIG_PATH ; 
 int /*<<< orphan*/  MSG_CONFIG_DIRECTORY_NOT_SET ; 
 int /*<<< orphan*/  MSG_USING_CORE_NAME_FOR_NEW_CONFIG ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_2__* configuration_settings ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int runloop_overrides_active ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,unsigned int) ; 
 char* FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,size_t) ; 

__attribute__((used)) static bool FUNC19(void)
{
   char msg[128];
   bool found_path                 = false;
   bool overrides_active           = false;
   const char *core_path           = NULL;
   char *config_name               = NULL;
   char *config_path               = NULL;
   char *config_dir                = NULL;
   size_t config_size              = PATH_MAX_LENGTH * sizeof(char);
   settings_t *settings            = configuration_settings;

   msg[0]                          = '\0';

   if (settings && !FUNC17(settings->paths.directory_menu_config))
      config_dir = FUNC16(settings->paths.directory_menu_config);
   else if (!FUNC12(RARCH_PATH_CONFIG)) /* Fallback */
   {
      config_dir                   = (char*)FUNC9(PATH_MAX_LENGTH * sizeof(char));
      config_dir[0]                = '\0';
      FUNC6(config_dir, FUNC11(RARCH_PATH_CONFIG),
            config_size);
   }

   if (FUNC17(config_dir))
   {
      FUNC14(FUNC10(MSG_CONFIG_DIRECTORY_NOT_SET), 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      FUNC0("[config] %s\n", FUNC10(MSG_CONFIG_DIRECTORY_NOT_SET));
      FUNC8 (config_dir);
      return false;
   }

   core_path                       = FUNC11(RARCH_PATH_CORE);
   config_name                     = (char*)FUNC9(PATH_MAX_LENGTH * sizeof(char));
   config_path                     = (char*)FUNC9(PATH_MAX_LENGTH * sizeof(char));
   config_name[0]                  = '\0';
   config_path[0]                  = '\0';

   /* Infer file name based on libretro core. */
   if (FUNC13(core_path))
   {
      unsigned i;
      FUNC1("%s\n", FUNC10(MSG_USING_CORE_NAME_FOR_NEW_CONFIG));

      /* In case of collision, find an alternative name. */
      for (i = 0; i < 16; i++)
      {
         char tmp[64]   = {0};

         FUNC5(
               config_name,
               core_path,
               config_size);

         FUNC7(config_path, config_dir, config_name,
               config_size);

         if (i)
            FUNC15(tmp, sizeof(tmp), "-%u", i);

         FUNC18(tmp, ".cfg", sizeof(tmp));
         FUNC18(config_path, tmp, config_size);

         if (!FUNC13(config_path))
         {
            found_path = true;
            break;
         }
      }
   }

   if (!found_path)
   {
      /* Fallback to system time... */
      FUNC2("[config] %s\n",
            FUNC10(MSG_CANNOT_INFER_NEW_CONFIG_PATH));
      FUNC4(config_name, ".cfg", config_size);
      FUNC7(config_path, config_dir, config_name,
            config_size);
   }

   if (runloop_overrides_active)
   {
      /* Overrides block config file saving,
       * make it appear as overrides weren't enabled
       * for a manual save. */
      runloop_overrides_active = false;
      overrides_active         = true;
   }

   FUNC3(config_path, msg, sizeof(msg));

   if (!FUNC17(msg))
      FUNC14(msg, 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   if (overrides_active)
      runloop_overrides_active = true;
   else
      runloop_overrides_active = false;

   FUNC8(config_dir);
   FUNC8(config_name);
   FUNC8(config_path);
   return true;
}