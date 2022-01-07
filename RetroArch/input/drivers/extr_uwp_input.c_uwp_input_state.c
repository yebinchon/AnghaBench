
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uwp_input_t ;
struct retro_keybind {int dummy; } ;
typedef int rarch_joypad_info_t ;
typedef int int16_t ;


 unsigned int RARCH_BIND_LIST_END ;


 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RETROK_LAST ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;




 int uwp_keyboard_pressed (unsigned int) ;
 int uwp_mouse_state (unsigned int,unsigned int,int) ;
 int uwp_pointer_state (unsigned int,unsigned int,int) ;
 int uwp_pressed_analog (int *,int ,struct retro_keybind const*,unsigned int,unsigned int,unsigned int) ;
 int uwp_pressed_joypad (int *,int ,struct retro_keybind const*,unsigned int,unsigned int) ;

__attribute__((used)) static int16_t uwp_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device,
      unsigned index, unsigned id)
{
   uwp_input_t *uwp = (uwp_input_t*)data;

   switch (device)
   {
      case 131:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (uwp_pressed_joypad(
                        uwp, joypad_info, binds[port], port, i))
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
               if (uwp_pressed_joypad(uwp, joypad_info, binds[port], port, id))
                  return 1;
         }
         break;
      case 132:
         if (binds[port])
            return uwp_pressed_analog(uwp, joypad_info, binds[port], port, index, id);
      case 130:
         return (id < RETROK_LAST) && uwp_keyboard_pressed(id);

      case 129:
      case 134:
         return uwp_mouse_state(port, id, device == 134);

      case 128:
      case 133:
         return uwp_pointer_state(index, id, device == 133);
   }

   return 0;
}
