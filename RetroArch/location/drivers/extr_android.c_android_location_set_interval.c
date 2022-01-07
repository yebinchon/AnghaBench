
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct android_app {TYPE_1__* activity; } ;
struct TYPE_4__ {int onLocationSetInterval; } ;
typedef TYPE_2__ androidlocation_t ;
struct TYPE_3__ {int clazz; } ;
typedef int JNIEnv ;


 int CALL_VOID_METHOD_PARAM (int *,int ,int ,int,int) ;
 scalar_t__ g_android ;
 int * jni_thread_getenv () ;

__attribute__((used)) static void android_location_set_interval(void *data, unsigned interval_ms,
      unsigned interval_distance)
{
   struct android_app *android_app = (struct android_app*)g_android;
   androidlocation_t *androidlocation = (androidlocation_t*)data;
   JNIEnv *env = jni_thread_getenv();
   if (!env)
      return;

   CALL_VOID_METHOD_PARAM(env, android_app->activity->clazz,
         androidlocation->onLocationSetInterval, (int)interval_ms,
         (int)interval_distance);
}
