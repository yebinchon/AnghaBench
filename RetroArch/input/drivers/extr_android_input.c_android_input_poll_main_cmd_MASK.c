#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct android_app {int reinitRequested; int stateSaved; int activityState; int sensor_state_mask; int unfocused; int destroyRequested; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  accelerometer_event_rate; int /*<<< orphan*/ * accelerometerSensor; int /*<<< orphan*/ * window; TYPE_1__* activity; int /*<<< orphan*/  config; int /*<<< orphan*/ * pendingWindow; int /*<<< orphan*/  looper; int /*<<< orphan*/  inputQueue; int /*<<< orphan*/  pendingInputQueue; int /*<<< orphan*/  msgread; } ;
typedef  int /*<<< orphan*/  jint ;
typedef  int int8_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int /*<<< orphan*/  doVibrate; TYPE_2__* activity; } ;
struct TYPE_5__ {int /*<<< orphan*/  clazz; } ;
struct TYPE_4__ {int /*<<< orphan*/  assetManager; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  APP_CMD_CONFIG_CHANGED 141 
#define  APP_CMD_DESTROY 140 
#define  APP_CMD_GAINED_FOCUS 139 
#define  APP_CMD_INIT_WINDOW 138 
#define  APP_CMD_INPUT_CHANGED 137 
#define  APP_CMD_LOST_FOCUS 136 
#define  APP_CMD_PAUSE 135 
#define  APP_CMD_REINIT_DONE 134 
#define  APP_CMD_RESUME 133 
#define  APP_CMD_SAVE_STATE 132 
#define  APP_CMD_START 131 
#define  APP_CMD_STOP 130 
#define  APP_CMD_TERM_WINDOW 129 
#define  APP_CMD_VIBRATE_KEYPRESS 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOPER_ID_INPUT ; 
 int /*<<< orphan*/  RARCH_CTL_SET_IDLE ; 
 int /*<<< orphan*/  RARCH_CTL_SET_PAUSED ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  RETRO_RUMBLE_STRONG ; 
 int RETRO_SENSOR_ACCELEROMETER_DISABLE ; 
 int RETRO_SENSOR_ACCELEROMETER_ENABLE ; 
 int FUNC5 (int) ; 
 TYPE_3__* g_android ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(void)
{
   int8_t cmd;
   struct android_app *android_app = (struct android_app*)g_android;

   if (FUNC9(android_app->msgread, &cmd, sizeof(cmd)) != sizeof(cmd))
      cmd = -1;

   switch (cmd)
   {
      case APP_CMD_REINIT_DONE:
         FUNC11(android_app->mutex);

         android_app->reinitRequested = 0;

         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);
         break;

      case APP_CMD_INPUT_CHANGED:
         FUNC11(android_app->mutex);

         if (android_app->inputQueue)
            FUNC2(android_app->inputQueue);

         android_app->inputQueue = android_app->pendingInputQueue;

         if (android_app->inputQueue)
         {
            FUNC4("Attaching input queue to looper");
            FUNC1(android_app->inputQueue,
                  android_app->looper, LOOPER_ID_INPUT, NULL,
                  NULL);
         }

         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);

         break;

      case APP_CMD_INIT_WINDOW:
         FUNC11(android_app->mutex);
         android_app->window = android_app->pendingWindow;
         android_app->reinitRequested = 1;
         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);

         break;

      case APP_CMD_SAVE_STATE:
         FUNC11(android_app->mutex);
         android_app->stateSaved = 1;
         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);
         break;

      case APP_CMD_RESUME:
      case APP_CMD_START:
      case APP_CMD_PAUSE:
      case APP_CMD_STOP:
         FUNC11(android_app->mutex);
         android_app->activityState = cmd;
         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);
         break;

      case APP_CMD_CONFIG_CHANGED:
         FUNC0(android_app->config,
               android_app->activity->assetManager);
         break;
      case APP_CMD_TERM_WINDOW:
         FUNC11(android_app->mutex);

         /* The window is being hidden or closed, clean it up. */
         /* terminate display/EGL context here */

         android_app->window = NULL;
         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);
         break;

      case APP_CMD_GAINED_FOCUS:
         {
            bool boolean = false;

            FUNC8(RARCH_CTL_SET_PAUSED, &boolean);
            FUNC8(RARCH_CTL_SET_IDLE,   &boolean);
            FUNC14();

            if ((android_app->sensor_state_mask
                     & (FUNC5(1) << RETRO_SENSOR_ACCELEROMETER_ENABLE))
                  && android_app->accelerometerSensor == NULL)
               FUNC6(0,
                     RETRO_SENSOR_ACCELEROMETER_ENABLE,
                     android_app->accelerometer_event_rate);
         }
         FUNC11(android_app->mutex);
         android_app->unfocused = false;
         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);
         break;
      case APP_CMD_LOST_FOCUS:
         {
            bool boolean = true;

            FUNC8(RARCH_CTL_SET_PAUSED, &boolean);
            FUNC8(RARCH_CTL_SET_IDLE,   &boolean);
            FUNC13();

            /* Avoid draining battery while app is not being used. */
            if ((android_app->sensor_state_mask
                     & (FUNC5(1) << RETRO_SENSOR_ACCELEROMETER_ENABLE))
                  && android_app->accelerometerSensor != NULL
                  )
               FUNC6(0,
                     RETRO_SENSOR_ACCELEROMETER_DISABLE,
                     android_app->accelerometer_event_rate);
         }
         FUNC11(android_app->mutex);
         android_app->unfocused = true;
         FUNC10(android_app->cond);
         FUNC12(android_app->mutex);
         break;

      case APP_CMD_DESTROY:
         FUNC4("APP_CMD_DESTROY\n");
         android_app->destroyRequested = 1;
         break;
      case APP_CMD_VIBRATE_KEYPRESS:
      {
         JNIEnv *env = (JNIEnv*)FUNC7();

         if (env && g_android && g_android->doVibrate)
         {
            FUNC3(env, g_android->activity->clazz,
                  g_android->doVibrate, (jint)-1, (jint)RETRO_RUMBLE_STRONG, (jint)255, (jint)1);
         }
         break;
      }
   }
}