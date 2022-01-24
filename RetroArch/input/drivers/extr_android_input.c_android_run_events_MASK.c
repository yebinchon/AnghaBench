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
struct android_app {scalar_t__ destroyRequested; scalar_t__ reinitRequested; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  APP_CMD_REINIT_DONE ; 
 int /*<<< orphan*/  CMD_EVENT_REINIT ; 
 scalar_t__ LOOPER_ID_MAIN ; 
 int /*<<< orphan*/  RARCH_CTL_IS_PAUSED ; 
 int /*<<< orphan*/  RARCH_CTL_SET_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct android_app*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ g_android ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC5(void *data)
{
   struct android_app *android_app = (struct android_app*)g_android;

   if (FUNC0(-1, NULL, NULL, NULL) == LOOPER_ID_MAIN)
      FUNC2();

   /* Check if we are exiting. */
   if (android_app->destroyRequested != 0)
   {
      FUNC4(RARCH_CTL_SET_SHUTDOWN, NULL);
      return false;
   }

   if (android_app->reinitRequested != 0)
   {
      if (FUNC4(RARCH_CTL_IS_PAUSED, NULL))
         FUNC3(CMD_EVENT_REINIT, NULL);
      FUNC1(android_app, APP_CMD_REINIT_DONE);
   }

   return true;
}