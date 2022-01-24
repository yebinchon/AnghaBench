#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  settings_t ;
struct TYPE_7__ {int argc; char** argv; int /*<<< orphan*/  environ_get; void* args; } ;
typedef  TYPE_2__ content_ctx_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  info; } ;
struct TYPE_8__ {TYPE_1__* application; } ;
struct TYPE_6__ {int exiting; int /*<<< orphan*/  (* quit ) () ;int /*<<< orphan*/  (* process_events ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_HISTORY_DEINIT ; 
 int /*<<< orphan*/  CORE_TYPE_PLAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRIVERS_CMD_ALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_POINTER ; 
 scalar_t__ MAX_USERS ; 
 int /*<<< orphan*/  RARCH_CTL_STATE_FREE ; 
 int /*<<< orphan*/  RARCH_DRIVER_CTL_DEINIT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  RETRO_DEVICE_JOYPAD ; 
 int audio_driver_active ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * configuration_settings ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ rarch_is_inited ; 
 int /*<<< orphan*/  rarch_tls ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 () ; 
 TYPE_5__ runloop_system ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 TYPE_3__ ui_companion_qt ; 
 int video_driver_active ; 

int FUNC25(int argc, char *argv[], void *data)
{
#if defined(_WIN32) && !defined(_XBOX) && !defined(__WINRT__)
   if (FAILED(CoInitialize(NULL)))
   {
      RARCH_ERR("FATAL: Failed to initialize the COM interface\n");
      return 1;
   }
#endif

   FUNC12(&runloop_system.info);
   FUNC4(CMD_EVENT_HISTORY_DEINIT, NULL);
   FUNC15();

   configuration_settings = (settings_t*)FUNC3(1, sizeof(settings_t));

   FUNC5(RARCH_DRIVER_CTL_DEINIT,  NULL);
   FUNC14(RARCH_CTL_STATE_FREE,  NULL);
   FUNC10();

   FUNC8(data);

   if (rarch_is_inited)
      FUNC6(DRIVERS_CMD_ALL);

#ifdef HAVE_THREAD_STORAGE
   sthread_tls_create(&rarch_tls);
   sthread_tls_set(&rarch_tls, MAGIC_POINTER);
#endif
   video_driver_active = true;
   audio_driver_active = true;
   {
      uint8_t i;
      for (i = 0; i < MAX_USERS; i++)
         FUNC11(i, RETRO_DEVICE_JOYPAD);
   }
   FUNC16();

   if (FUNC9())
   {
      content_ctx_info_t info;

      info.argc            = argc;
      info.argv            = argv;
      info.args            = data;
      info.environ_get     = FUNC7();

      if (!FUNC22(
               NULL,
               NULL,
               &info,
               CORE_TYPE_PLAIN,
               NULL,
               NULL))
         return 1;
   }

   FUNC24();

#if !defined(HAVE_MAIN) || defined(HAVE_QT)
   do
   {
      int ret;
      bool app_exit     = false;
#ifdef HAVE_QT
      ui_companion_qt.application->process_events();
#endif
      ret = FUNC17();

      FUNC23();

#ifdef HAVE_QT
      app_exit = ui_companion_qt.application->exiting;
#endif

      if (ret == -1 || app_exit)
      {
#ifdef HAVE_QT
         ui_companion_qt.application->quit();
#endif
         break;
      }
   }while(1);

   FUNC13(data);
#endif

   return 0;
}