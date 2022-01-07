
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct retro_keybind {int dummy; } ;
struct TYPE_7__ {int joypad; } ;
typedef TYPE_1__ sdl_input_t ;
typedef int rarch_joypad_info_t ;
typedef int int16_t ;
typedef enum input_device_type { ____Placeholder_input_device_type } input_device_type ;


 int INPUT_DEVICE_TYPE_NONE ;
 unsigned int RARCH_BIND_LIST_END ;

 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RETROK_LAST ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;





 int input_joypad_analog (int ,int ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 int sdl_analog_pressed (TYPE_1__*,struct retro_keybind const*,unsigned int,unsigned int) ;
 int sdl_joypad_device_state (TYPE_1__*,int ,struct retro_keybind const*,unsigned int,unsigned int,int*) ;
 int sdl_key_pressed (unsigned int) ;
 int sdl_lightgun_device_state (TYPE_1__*,unsigned int) ;
 int sdl_mouse_device_state (TYPE_1__*,unsigned int) ;
 int sdl_pointer_device_state (TYPE_1__*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int16_t sdl_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device, unsigned idx, unsigned id)
{
   enum input_device_type type = INPUT_DEVICE_TYPE_NONE;
   sdl_input_t *sdl = (sdl_input_t*)data;

   switch (device)
   {
      case 132:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;

            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (sdl_joypad_device_state(
                        sdl, joypad_info, binds[port], port, i, &type))
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
               if (sdl_joypad_device_state(sdl,
                     joypad_info, binds[port], port, id, &type))
                  return 1;
         }
         break;
      case 133:
         if (binds[port])
         {
            int16_t ret = sdl_analog_pressed(sdl, binds[port], idx, id);
            if (!ret)
               ret = input_joypad_analog(sdl->joypad,
                        joypad_info, port, idx, id, binds[port]);
            return ret;
         }
         break;
      case 129:
         return sdl_mouse_device_state(sdl, id);
      case 128:
      case 134:
         if (idx == 0)
            return sdl_pointer_device_state(sdl, idx, id,
                  device == 134);
         break;
      case 131:
         return (id < RETROK_LAST) && sdl_key_pressed(id);
      case 130:
         return sdl_lightgun_device_state(sdl, id);
   }

   return 0;
}
