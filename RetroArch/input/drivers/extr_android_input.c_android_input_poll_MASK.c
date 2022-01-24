#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct android_app {scalar_t__ destroyRequested; scalar_t__ reinitRequested; scalar_t__ input_alive; } ;
struct TYPE_5__ {int input_block_timeout; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  android_input_t ;
struct TYPE_7__ {scalar_t__ valid; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  APP_CMD_REINIT_DONE ; 
 int /*<<< orphan*/  CMD_EVENT_REINIT ; 
#define  LOOPER_ID_INPUT 130 
#define  LOOPER_ID_MAIN 129 
#define  LOOPER_ID_USER 128 
 int /*<<< orphan*/  RARCH_CTL_IS_PAUSED ; 
 int /*<<< orphan*/  RARCH_CTL_SET_SHUTDOWN ; 
 size_t RARCH_PAUSE_TOGGLE ; 
 int /*<<< orphan*/  FUNC1 (struct android_app*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 () ; 
 scalar_t__ g_android ; 
 TYPE_3__** input_config_binds ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void *data)
{
   settings_t *settings = FUNC8();
   int ident;
   struct android_app *android_app = (struct android_app*)g_android;
   android_input_t *android        = (android_input_t*)data;

   while ((ident =
            FUNC0((input_config_binds[0][RARCH_PAUSE_TOGGLE].valid 
               && FUNC2(android, RARCH_PAUSE_TOGGLE))
               ? -1 : settings->uints.input_block_timeout,
               NULL, NULL, NULL)) >= 0)
   {
      switch (ident)
      {
         case LOOPER_ID_INPUT:
            FUNC3(android);
            break;
         case LOOPER_ID_USER:
            FUNC6(android);
            break;
         case LOOPER_ID_MAIN:
            FUNC4();
            break;
      }

      if (android_app->destroyRequested != 0)
      {
         FUNC9(RARCH_CTL_SET_SHUTDOWN, NULL);
         return;
      }

      if (android_app->reinitRequested != 0)
      {
         if (FUNC9(RARCH_CTL_IS_PAUSED, NULL))
            FUNC7(CMD_EVENT_REINIT, NULL);
         FUNC1(android_app, APP_CMD_REINIT_DONE);
         return;
      }
   }

   if (android_app->input_alive)
      FUNC5(android);
}