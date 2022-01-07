
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dinput_input {struct dinput_input* joypad_driver_name; scalar_t__ mouse; scalar_t__ keyboard; TYPE_1__* joypad; } ;
struct TYPE_2__ {int (* destroy ) () ;} ;
typedef int * LPDIRECTINPUT8 ;


 int IDirectInputDevice8_Release (scalar_t__) ;
 int dinput_clear_pointers (struct dinput_input*) ;
 int dinput_destroy_context () ;
 int free (struct dinput_input*) ;
 int * g_dinput_ctx ;
 int stub1 () ;

__attribute__((used)) static void dinput_free(void *data)
{
   struct dinput_input *di = (struct dinput_input*)data;
   LPDIRECTINPUT8 hold_ctx = g_dinput_ctx;

   if (di)
   {

      g_dinput_ctx = ((void*)0);
      if (di->joypad)
         di->joypad->destroy();
      g_dinput_ctx = hold_ctx;


      dinput_clear_pointers(di);

      if (di->keyboard)
         IDirectInputDevice8_Release(di->keyboard);

      if (di->mouse)
         IDirectInputDevice8_Release(di->mouse);

      if (di->joypad_driver_name)
         free(di->joypad_driver_name);

      free(di);
   }

   dinput_destroy_context();
}
