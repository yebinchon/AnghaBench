#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ config_save_on_exit; } ;
struct TYPE_6__ {int /*<<< orphan*/  video_driver; } ;
struct TYPE_8__ {TYPE_2__ bools; TYPE_1__ arrays; } ;
typedef  TYPE_3__ settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_LOG_FILE_DEINIT ; 
 int /*<<< orphan*/  CMD_EVENT_MENU_SAVE_CURRENT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DRIVERS_CMD_ALL ; 
 int /*<<< orphan*/  RARCH_CTL_DATA_DEINIT ; 
 int /*<<< orphan*/  RARCH_CTL_MAIN_DEINIT ; 
 int /*<<< orphan*/  RARCH_CTL_STATE_FREE ; 
 int /*<<< orphan*/  RARCH_DRIVER_CTL_DEINIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_UNSET_OWN_DRIVER ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 scalar_t__* cached_video_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* configuration_settings ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int has_set_username ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int rarch_block_config_read ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int rarch_error_on_init ; 
 int rarch_is_inited ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

void FUNC21(void *args)
{
   settings_t *settings = configuration_settings;
   
   if (cached_video_driver[0])
   {
      FUNC18(settings->arrays.video_driver, cached_video_driver);
      cached_video_driver[0] = 0;
      FUNC1("[Video]: Restored video driver to \"%s\".\n", settings->arrays.video_driver);
   }

   if (settings->bools.config_save_on_exit)
      FUNC2(CMD_EVENT_MENU_SAVE_CURRENT_CONFIG, NULL);

#ifdef HAVE_MENU
   /* Do not want menu context to live any more. */
   menu_driver_ctl(RARCH_MENU_CTL_UNSET_OWN_DRIVER, NULL);
#endif
   FUNC15(RARCH_CTL_MAIN_DEINIT, NULL);

   FUNC16();

#if defined(HAVE_LOGGER) && !defined(ANDROID)
   logger_shutdown();
#endif

   FUNC6(args);
   FUNC7(
         FUNC13(RARCH_PATH_CORE),
         FUNC14(RARCH_PATH_CORE));

   has_set_username        = false;
   rarch_is_inited         = false;
   rarch_error_on_init     = false;
   rarch_block_config_read = false;

   FUNC17();
   FUNC4(DRIVERS_CMD_ALL);
   FUNC2(CMD_EVENT_LOG_FILE_DEINIT, NULL);

   FUNC15(RARCH_CTL_STATE_FREE,  NULL);
   FUNC10();
   FUNC15(RARCH_CTL_DATA_DEINIT, NULL);

   if (configuration_settings)
      FUNC5(configuration_settings);
   configuration_settings = NULL;

   FUNC19();

   FUNC9(false);

   FUNC3(RARCH_DRIVER_CTL_DEINIT, NULL);
   FUNC20();
   FUNC8();

#if defined(_WIN32) && !defined(_XBOX) && !defined(__WINRT__)
   CoUninitialize();
#endif
}