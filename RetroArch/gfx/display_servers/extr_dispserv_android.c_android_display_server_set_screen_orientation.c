
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum rotation { ____Placeholder_rotation } rotation ;
struct TYPE_4__ {scalar_t__ setScreenOrientation; TYPE_1__* activity; } ;
struct TYPE_3__ {int clazz; } ;
typedef int JNIEnv ;


 int CALL_VOID_METHOD_PARAM (int *,int ,scalar_t__,int) ;
 TYPE_2__* g_android ;
 int * jni_thread_getenv () ;

__attribute__((used)) static void android_display_server_set_screen_orientation(enum rotation rotation)
{
   JNIEnv *env = jni_thread_getenv();

   if (!env || !g_android)
      return;

   if (g_android->setScreenOrientation)
      CALL_VOID_METHOD_PARAM(env, g_android->activity->clazz,
            g_android->setScreenOrientation, rotation);
}
