
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {scalar_t__** analog_state; scalar_t__** hat_state; } ;


 unsigned int DEFAULT_MAX_PADS ;
 unsigned int MAX_AXIS ;
 scalar_t__ g_android ;

__attribute__((used)) static void android_joypad_destroy(void)
{
   unsigned i, j;
   struct android_app *android_app = (struct android_app*)g_android;

   for (i = 0; i < DEFAULT_MAX_PADS; i++)
   {
      for (j = 0; j < 2; j++)
         android_app->hat_state[i][j] = 0;
      for (j = 0; j < MAX_AXIS; j++)
         android_app->analog_state[i][j] = 0;
   }
}
