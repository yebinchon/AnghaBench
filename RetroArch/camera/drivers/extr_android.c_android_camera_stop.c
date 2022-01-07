
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct android_app {TYPE_1__* activity; } ;
struct TYPE_4__ {scalar_t__ tex; int onCameraStop; } ;
typedef TYPE_2__ androidcamera_t ;
struct TYPE_3__ {int clazz; } ;
typedef int JNIEnv ;


 int CALL_VOID_METHOD (int *,int ,int ) ;
 scalar_t__ g_android ;
 int * jni_thread_getenv () ;
 int video_driver_texture_unload (uintptr_t*) ;

__attribute__((used)) static void android_camera_stop(void *data)
{
   struct android_app *android_app = (struct android_app*)g_android;
   androidcamera_t *androidcamera = (androidcamera_t*)data;
   JNIEnv *env = jni_thread_getenv();

   if (!env)
      return;

   CALL_VOID_METHOD(env, android_app->activity->clazz,
         androidcamera->onCameraStop);

   if (androidcamera->tex)
      video_driver_texture_unload((uintptr_t*)&androidcamera->tex);
}
