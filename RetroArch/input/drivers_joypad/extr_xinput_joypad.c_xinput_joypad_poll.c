
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* poll ) () ;} ;
struct TYPE_3__ {int connected; int xstate; } ;


 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ;
 TYPE_2__ dinput_joypad ;
 scalar_t__ g_XInputGetStateEx (unsigned int,int *) ;
 TYPE_1__* g_xinput_states ;
 int input_autoconfigure_disconnect (unsigned int,int ) ;
 int stub1 () ;
 int xinput_joypad_destroy () ;
 int xinput_joypad_init (int *) ;
 int xinput_joypad_name (unsigned int) ;

__attribute__((used)) static void xinput_joypad_poll(void)
{
   unsigned i;

   for (i = 0; i < 4; ++i)
   {
      bool new_connected = g_XInputGetStateEx(i, &(g_xinput_states[i].xstate)) != ERROR_DEVICE_NOT_CONNECTED;
      if (new_connected != g_xinput_states[i].connected)
      {
         if (new_connected)
         {

            xinput_joypad_destroy();
            xinput_joypad_init(((void*)0));
            return;
         }

         g_xinput_states[i].connected = new_connected;
         if (!g_xinput_states[i].connected)
            input_autoconfigure_disconnect(i, xinput_joypad_name(i));
      }

   }




}
