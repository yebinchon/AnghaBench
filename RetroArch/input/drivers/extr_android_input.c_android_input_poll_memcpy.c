
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct android_app {int ** analog_state; int ** hat_state; } ;
struct TYPE_3__ {int ** analog_state; int ** hat_state; } ;
typedef TYPE_1__ android_input_t ;


 unsigned int DEFAULT_MAX_PADS ;
 unsigned int MAX_AXIS ;
 scalar_t__ g_android ;

__attribute__((used)) static void android_input_poll_memcpy(android_input_t *android)
{
   unsigned i, j;
   struct android_app *android_app = (struct android_app*)g_android;

   for (i = 0; i < DEFAULT_MAX_PADS; i++)
   {
      for (j = 0; j < 2; j++)
         android_app->hat_state[i][j] = android->hat_state[i][j];
      for (j = 0; j < MAX_AXIS; j++)
         android_app->analog_state[i][j] = android->analog_state[i][j];
   }
}
