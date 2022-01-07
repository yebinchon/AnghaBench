
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct android_app {int reinitRequested; int stateSaved; int activityState; int sensor_state_mask; int unfocused; int destroyRequested; int mutex; int cond; int accelerometer_event_rate; int * accelerometerSensor; int * window; TYPE_1__* activity; int config; int * pendingWindow; int looper; int inputQueue; int pendingInputQueue; int msgread; } ;
typedef int jint ;
typedef int int8_t ;
typedef int cmd ;
struct TYPE_6__ {int doVibrate; TYPE_2__* activity; } ;
struct TYPE_5__ {int clazz; } ;
struct TYPE_4__ {int assetManager; } ;
typedef int JNIEnv ;


 int AConfiguration_fromAssetManager (int ,int ) ;
 int AInputQueue_attachLooper (int ,int ,int ,int *,int *) ;
 int AInputQueue_detachLooper (int ) ;
 int CALL_VOID_METHOD_PARAM (int *,int ,int ,int ,int ,int ,int ) ;
 int LOOPER_ID_INPUT ;
 int RARCH_CTL_SET_IDLE ;
 int RARCH_CTL_SET_PAUSED ;
 int RARCH_LOG (char*) ;
 int RETRO_RUMBLE_STRONG ;
 int RETRO_SENSOR_ACCELEROMETER_DISABLE ;
 int RETRO_SENSOR_ACCELEROMETER_ENABLE ;
 int UINT64_C (int) ;
 TYPE_3__* g_android ;
 int input_sensor_set_state (int ,int,int ) ;
 scalar_t__ jni_thread_getenv () ;
 int rarch_ctl (int ,int*) ;
 int read (int ,int*,int) ;
 int scond_broadcast (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int video_driver_set_stub_frame () ;
 int video_driver_unset_stub_frame () ;

__attribute__((used)) static void android_input_poll_main_cmd(void)
{
   int8_t cmd;
   struct android_app *android_app = (struct android_app*)g_android;

   if (read(android_app->msgread, &cmd, sizeof(cmd)) != sizeof(cmd))
      cmd = -1;

   switch (cmd)
   {
      case 134:
         slock_lock(android_app->mutex);

         android_app->reinitRequested = 0;

         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);
         break;

      case 137:
         slock_lock(android_app->mutex);

         if (android_app->inputQueue)
            AInputQueue_detachLooper(android_app->inputQueue);

         android_app->inputQueue = android_app->pendingInputQueue;

         if (android_app->inputQueue)
         {
            RARCH_LOG("Attaching input queue to looper");
            AInputQueue_attachLooper(android_app->inputQueue,
                  android_app->looper, LOOPER_ID_INPUT, ((void*)0),
                  ((void*)0));
         }

         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);

         break;

      case 138:
         slock_lock(android_app->mutex);
         android_app->window = android_app->pendingWindow;
         android_app->reinitRequested = 1;
         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);

         break;

      case 132:
         slock_lock(android_app->mutex);
         android_app->stateSaved = 1;
         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);
         break;

      case 133:
      case 131:
      case 135:
      case 130:
         slock_lock(android_app->mutex);
         android_app->activityState = cmd;
         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);
         break;

      case 141:
         AConfiguration_fromAssetManager(android_app->config,
               android_app->activity->assetManager);
         break;
      case 129:
         slock_lock(android_app->mutex);




         android_app->window = ((void*)0);
         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);
         break;

      case 139:
         {
            bool boolean = 0;

            rarch_ctl(RARCH_CTL_SET_PAUSED, &boolean);
            rarch_ctl(RARCH_CTL_SET_IDLE, &boolean);
            video_driver_unset_stub_frame();

            if ((android_app->sensor_state_mask
                     & (UINT64_C(1) << RETRO_SENSOR_ACCELEROMETER_ENABLE))
                  && android_app->accelerometerSensor == ((void*)0))
               input_sensor_set_state(0,
                     RETRO_SENSOR_ACCELEROMETER_ENABLE,
                     android_app->accelerometer_event_rate);
         }
         slock_lock(android_app->mutex);
         android_app->unfocused = 0;
         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);
         break;
      case 136:
         {
            bool boolean = 1;

            rarch_ctl(RARCH_CTL_SET_PAUSED, &boolean);
            rarch_ctl(RARCH_CTL_SET_IDLE, &boolean);
            video_driver_set_stub_frame();


            if ((android_app->sensor_state_mask
                     & (UINT64_C(1) << RETRO_SENSOR_ACCELEROMETER_ENABLE))
                  && android_app->accelerometerSensor != ((void*)0)
                  )
               input_sensor_set_state(0,
                     RETRO_SENSOR_ACCELEROMETER_DISABLE,
                     android_app->accelerometer_event_rate);
         }
         slock_lock(android_app->mutex);
         android_app->unfocused = 1;
         scond_broadcast(android_app->cond);
         slock_unlock(android_app->mutex);
         break;

      case 140:
         RARCH_LOG("APP_CMD_DESTROY\n");
         android_app->destroyRequested = 1;
         break;
      case 128:
      {
         JNIEnv *env = (JNIEnv*)jni_thread_getenv();

         if (env && g_android && g_android->doVibrate)
         {
            CALL_VOID_METHOD_PARAM(env, g_android->activity->clazz,
                  g_android->doVibrate, (jint)-1, (jint)RETRO_RUMBLE_STRONG, (jint)255, (jint)1);
         }
         break;
      }
   }
}
