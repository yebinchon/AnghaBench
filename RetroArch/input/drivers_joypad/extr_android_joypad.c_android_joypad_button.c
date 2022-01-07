
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct android_app {int** hat_state; } ;


 scalar_t__ BIT_GET (int *,int ) ;
 unsigned int DEFAULT_MAX_PADS ;
 unsigned int GET_HAT (int ) ;
 unsigned int GET_HAT_DIR (int ) ;




 int LAST_KEYCODE ;
 int * android_keyboard_state_get (unsigned int) ;
 scalar_t__ g_android ;

__attribute__((used)) static bool android_joypad_button(unsigned port, uint16_t joykey)
{
   uint8_t *buf = android_keyboard_state_get(port);
   struct android_app *android_app = (struct android_app*)g_android;
   unsigned hat_dir = GET_HAT_DIR(joykey);

   if (port >= DEFAULT_MAX_PADS)
      return 0;

   if (hat_dir)
   {
      unsigned h = GET_HAT(joykey);
      if (h > 0)
         return 0;

      switch (hat_dir)
      {
         case 130:
            return android_app->hat_state[port][0] == -1;
         case 129:
            return android_app->hat_state[port][0] == 1;
         case 128:
            return android_app->hat_state[port][1] == -1;
         case 131:
            return android_app->hat_state[port][1] == 1;
         default:
            return 0;
      }
   }

   return joykey < LAST_KEYCODE && BIT_GET(buf, joykey);
}
