
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int joypad; } ;
typedef TYPE_1__ udev_input_t ;
typedef int udev_input_mouse_t ;
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
 int udev_analog_pressed (struct retro_keybind const*,unsigned int,unsigned int) ;
 int * udev_get_mouse (TYPE_1__*,unsigned int) ;
 int udev_is_pressed (TYPE_1__*,int ,struct retro_keybind const*,unsigned int,unsigned int) ;
 int udev_keyboard_pressed (TYPE_1__*,unsigned int) ;
 int udev_lightgun_aiming_state (TYPE_1__*,unsigned int,unsigned int) ;
 int udev_mouse_get_x (int *) ;
 int udev_mouse_get_y (int *) ;
 int udev_mouse_state (TYPE_1__*,unsigned int,unsigned int,int) ;
 int udev_pointer_state (TYPE_1__*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int16_t udev_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device, unsigned idx, unsigned id)
{
   udev_input_t *udev = (udev_input_t*)data;

   switch (device)
   {
      case 132:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (udev_is_pressed(
                        udev, joypad_info, binds[port], port, i))
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
               if (udev_is_pressed(udev, joypad_info, binds[port], port, id))
                  return 1;
         }
         break;
      case 150:
         {
            int16_t ret = udev_analog_pressed(binds[port], idx, id);
            if (!ret && binds[port])
               ret = input_joypad_analog(udev->joypad,
                        joypad_info, port, idx, id, binds[port]);
            return ret;
         }
      case 131:
         return (id < RETROK_LAST) && udev_keyboard_pressed(udev, id);

      case 129:
         return udev_mouse_state(udev, port, id, 0);
      case 152:
         return udev_mouse_state(udev, port, id, 1);

      case 128:
         if (idx == 0)
            return udev_pointer_state(udev, port, id, 0);
         break;
      case 151:
         if (idx == 0)
            return udev_pointer_state(udev, port, id, 1);
         break;

      case 130:
         switch ( id )
         {

            case 139:
            case 138:
            case 142:
               return udev_lightgun_aiming_state( udev, port, id );


            case 135:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_TRIGGER);
            case 140:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_RELOAD);
            case 149:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_A);
            case 148:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_B);
            case 147:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_AUX_C);
            case 136:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_START);
            case 137:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_SELECT);
            case 143:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_UP);
            case 146:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_DOWN);
            case 145:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_LEFT);
            case 144:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_DPAD_RIGHT);


            case 134:
               {
                  udev_input_mouse_t *mouse = udev_get_mouse(udev, port);
                  return (mouse) ? udev_mouse_get_x(mouse) : 0;
               }
            case 133:
               {
                  udev_input_mouse_t *mouse = udev_get_mouse(udev, port);
                  return (mouse) ? udev_mouse_get_y(mouse) : 0;
               }
            case 141:
               return udev_is_pressed(udev, joypad_info, binds[port], port, RARCH_LIGHTGUN_START);

         }
         break;
   }

   return 0;
}
