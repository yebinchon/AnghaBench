
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct android_app {int input_alive; int sensorEventQueue; scalar_t__ sensorManager; } ;
typedef int dylib_t ;
struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ android_input_t ;
struct TYPE_3__ {int (* destroy ) () ;} ;


 int ASensorManager_destroyEventQueue (scalar_t__,int ) ;
 int android_keyboard_free () ;
 int dylib_close (int ) ;
 int free (void*) ;
 scalar_t__ g_android ;
 int * libandroid_handle ;
 int stub1 () ;

__attribute__((used)) static void android_input_free_input(void *data)
{
   android_input_t *android = (android_input_t*)data;
   struct android_app *android_app = (struct android_app*)g_android;
   if (!android)
      return;

   if (android_app->sensorManager)
      ASensorManager_destroyEventQueue(android_app->sensorManager,
            android_app->sensorEventQueue);

   if (android->joypad)
      android->joypad->destroy();
   android->joypad = ((void*)0);

   android_app->input_alive = 0;






   android_keyboard_free();
   free(data);
}
