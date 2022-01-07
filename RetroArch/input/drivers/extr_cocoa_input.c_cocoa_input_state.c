
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct retro_keybind {size_t key; int joyaxis; int joykey; } ;
struct TYPE_11__ {float axis_threshold; int joy_idx; TYPE_1__* auto_binds; } ;
typedef TYPE_2__ rarch_joypad_info_t ;
typedef int int16_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;
struct TYPE_12__ {TYPE_4__* joypad; TYPE_4__* sec_joypad; } ;
typedef TYPE_3__ cocoa_input_data_t ;
struct TYPE_13__ {int (* axis ) (int ,int const) ;int (* button ) (int ,int ) ;} ;
struct TYPE_10__ {int joyaxis; int joykey; } ;


 int AXIS_NONE ;
 int NO_BTN ;
 unsigned int RARCH_BIND_LIST_END ;


 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RETROK_LAST ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;




 scalar_t__ abs (int ) ;
 int * apple_key_state ;
 int cocoa_mouse_state (TYPE_3__*,unsigned int) ;
 int cocoa_mouse_state_screen (TYPE_3__*,unsigned int) ;
 int cocoa_pointer_state (TYPE_3__*,unsigned int,unsigned int,unsigned int) ;
 int input_joypad_analog (TYPE_4__*,TYPE_2__,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 size_t* rarch_keysym_lut ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int const) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int const) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int const) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int const) ;

__attribute__((used)) static int16_t cocoa_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds, unsigned port,
      unsigned device, unsigned idx, unsigned id)
{
   cocoa_input_data_t *apple = (cocoa_input_data_t*)data;

   switch (device)
   {
      case 131:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {

               const uint64_t joykey = (binds[port][i].joykey != NO_BTN)
                  ? binds[port][i].joykey : joypad_info.auto_binds[i].joykey;
               const uint32_t joyaxis = (binds[port][i].joyaxis != AXIS_NONE)
                  ? binds[port][i].joyaxis : joypad_info.auto_binds[i].joyaxis;

               if (apple_key_state[rarch_keysym_lut[binds[port][i].key]])
               {
                  ret |= (1 << i);
                  continue;
               }

               if ((uint16_t)joykey != NO_BTN && apple->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
               {
                  ret |= (1 << i);
                  continue;
               }
               if (((float)abs(apple->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               {
                  ret |= (1 << i);
                  continue;
               }
            }
            return ret;
         }
         else
         {

            const uint64_t joykey = (binds[port][id].joykey != NO_BTN)
               ? binds[port][id].joykey : joypad_info.auto_binds[id].joykey;
            const uint32_t joyaxis = (binds[port][id].joyaxis != AXIS_NONE)
               ? binds[port][id].joyaxis : joypad_info.auto_binds[id].joyaxis;
            if (id < RARCH_BIND_LIST_END)
               if (apple_key_state[rarch_keysym_lut[binds[port][id].key]])
                  return 1;
            if ((uint16_t)joykey != NO_BTN && apple->joypad->button(
                     joypad_info.joy_idx, (uint16_t)joykey))
               return 1;
            if (((float)abs(apple->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               return 1;






         }
         break;
      case 132:
         {
            int16_t ret = 0;




            if (!ret && binds[port])
               ret = input_joypad_analog(apple->joypad, joypad_info, port,
                     idx, id, binds[port]);
            return ret;
         }
      case 130:
         return (id < RETROK_LAST) && apple_key_state[rarch_keysym_lut[(enum retro_key)id]];
      case 129:
         return cocoa_mouse_state(apple, id);
      case 134:
         return cocoa_mouse_state_screen(apple, id);
      case 128:
      case 133:
         return cocoa_pointer_state(apple, device, idx, id);
   }

   return 0;
}
