
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_keybind {int dummy; } ;
typedef int rarch_joypad_info_t ;
typedef int qnx_input_t ;
typedef int int16_t ;



 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;



 int qnx_is_pressed (int *,int ,unsigned int,struct retro_keybind const*,unsigned int) ;
 int qnx_keyboard_pressed (int *,unsigned int) ;
 int qnx_pointer_input_state (int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static int16_t qnx_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device, unsigned idx, unsigned id)
{
   qnx_input_t *qnx = (qnx_input_t*)data;

   switch (device)
   {
      case 130:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (qnx_is_pressed(
                        qnx, joypad_info, port, binds[port], i))
               {
                  ret |= (1 << i);
                  continue;
               }
            }

            return ret;
         }
         else
            if (qnx_is_pressed(qnx, joypad_info, port, binds[port], id))
               return 1;
         break;
      case 129:
         return qnx_keyboard_pressed(qnx, id);
      case 128:
      case 131:
         return qnx_pointer_input_state(qnx, idx, id, device == 131);
      default:
          break;
   }

   return 0;
}
