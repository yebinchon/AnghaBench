
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int mouse_x; int mouse_last_x; int mouse_y; int mouse_last_y; int joypad; } ;
typedef TYPE_1__ x11_input_t ;
struct retro_keybind {int dummy; } ;
typedef int rarch_joypad_info_t ;
typedef int int16_t ;


 unsigned int RARCH_BIND_LIST_END ;


 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RARCH_LIGHTGUN_AUX_A ;
 unsigned int RARCH_LIGHTGUN_AUX_B ;
 unsigned int RARCH_LIGHTGUN_AUX_C ;
 unsigned int RARCH_LIGHTGUN_DPAD_DOWN ;
 unsigned int RARCH_LIGHTGUN_DPAD_LEFT ;
 unsigned int RARCH_LIGHTGUN_DPAD_RIGHT ;
 unsigned int RARCH_LIGHTGUN_DPAD_UP ;
 unsigned int RARCH_LIGHTGUN_RELOAD ;
 unsigned int RARCH_LIGHTGUN_SELECT ;
 unsigned int RARCH_LIGHTGUN_START ;
 unsigned int RARCH_LIGHTGUN_TRIGGER ;
 unsigned int RETROK_LAST ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;
 int input_joypad_analog (int ,int ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 int x_is_pressed (TYPE_1__*,int ,struct retro_keybind const*,unsigned int,unsigned int) ;
 int x_keyboard_pressed (TYPE_1__*,unsigned int) ;
 int x_lightgun_aiming_state (TYPE_1__*,unsigned int,unsigned int) ;
 int x_mouse_state (TYPE_1__*,unsigned int) ;
 int x_mouse_state_screen (TYPE_1__*,unsigned int) ;
 int x_pointer_state (TYPE_1__*,unsigned int,unsigned int,int) ;
 int x_pressed_analog (TYPE_1__*,struct retro_keybind const*,unsigned int,unsigned int) ;

__attribute__((used)) static int16_t x_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds, unsigned port,
      unsigned device, unsigned idx, unsigned id)
{
   x11_input_t *x11 = (x11_input_t*)data;

   switch (device)
   {
      case 132:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (x_is_pressed(
                        x11, joypad_info, binds[port], port, i))
               {
                  ret |= (1 << i);
                  continue;
               }
            }

            return ret;
         }
         else
         {
            if (id < RARCH_BIND_LIST_END)
               if (x_is_pressed(x11, joypad_info, binds[port], port, id))
                  return 1;
         }
         break;
      case 150:
         {
            int16_t ret = x_pressed_analog(x11, binds[port], idx, id);
            if (!ret && binds[port])
               ret = input_joypad_analog(x11->joypad, joypad_info,
                     port, idx,
                     id, binds[port]);
            return ret;
         }
      case 131:
         return (id < RETROK_LAST) && x_keyboard_pressed(x11, id);
      case 129:
         return x_mouse_state(x11, id);
      case 152:
         return x_mouse_state_screen(x11, id);

      case 128:
      case 151:
         if (idx == 0)
            return x_pointer_state(x11, idx, id,
                  device == 151);
         break;
      case 130:
         switch ( id )
         {

            case 139:
            case 138:
            case 142:
               return x_lightgun_aiming_state( x11, idx, id );


            case 135:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_TRIGGER);
            case 140:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_RELOAD);
            case 149:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_A);
            case 148:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_B);
            case 147:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_C);
            case 136:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_START);
            case 137:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_SELECT);
            case 143:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_UP);
            case 146:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_DOWN);
            case 145:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_LEFT);
            case 144:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_RIGHT);


            case 134:
               return x11->mouse_x - x11->mouse_last_x;
            case 133:
               return x11->mouse_y - x11->mouse_last_y;
            case 141:
               return x_is_pressed(x11, joypad_info, binds[port], port, RARCH_LIGHTGUN_START);

         }
         break;
   }

   return 0;
}
