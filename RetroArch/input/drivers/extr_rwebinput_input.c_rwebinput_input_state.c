
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct retro_keybind {int dummy; } ;
struct TYPE_5__ {int mouse; int joypad; } ;
typedef TYPE_1__ rwebinput_input_t ;
typedef int rarch_joypad_info_t ;
typedef int int16_t ;


 unsigned int RARCH_BIND_LIST_END ;


 unsigned int RARCH_FIRST_CUSTOM_BIND ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;




 int input_joypad_analog (int ,int ,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 int rwebinput_analog_pressed (TYPE_1__*,int ,struct retro_keybind const*,unsigned int,unsigned int) ;
 int rwebinput_is_pressed (TYPE_1__*,int ,unsigned int,unsigned int,unsigned int) ;
 int rwebinput_key_pressed (TYPE_1__*,unsigned int) ;
 int rwebinput_mouse_state (int *,unsigned int,int) ;
 int rwebinput_pointer_device_state (int *,unsigned int,int) ;

__attribute__((used)) static int16_t rwebinput_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device, unsigned idx, unsigned id)
{
   rwebinput_input_t *rwebinput = (rwebinput_input_t*)data;

   switch (device)
   {
      case 131:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (rwebinput_is_pressed(
                        rwebinput, joypad_info, port, binds[port], i))
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
               if (rwebinput_is_pressed(rwebinput, joypad_info, binds[port],
                     port, id))
                  return 1;
         }
         break;
      case 132:
         {
            int16_t ret = rwebinput_analog_pressed(
                  rwebinput, joypad_info, binds[port],
                  idx, id);
            if (!ret && binds[port])
               ret = input_joypad_analog(rwebinput->joypad, joypad_info, port,
                     idx, id, binds[port]);
            return ret;
         }
      case 130:
         return rwebinput_key_pressed(rwebinput, id);
      case 129:
         return rwebinput_mouse_state(&rwebinput->mouse, id, 0);
      case 134:
         return rwebinput_mouse_state(&rwebinput->mouse, id, 1);
      case 128:
         return rwebinput_pointer_device_state(&rwebinput->mouse, id, 0);
      case 133:
         return rwebinput_pointer_device_state(&rwebinput->mouse, id, 1);
   }

   return 0;
}
