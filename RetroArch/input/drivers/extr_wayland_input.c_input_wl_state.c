
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct retro_keybind {size_t key; int joyaxis; int joykey; } ;
struct TYPE_15__ {float axis_threshold; int joy_idx; TYPE_1__* auto_binds; } ;
typedef TYPE_2__ rarch_joypad_info_t ;
typedef int int16_t ;
struct TYPE_16__ {TYPE_11__* joypad; int key_state; } ;
typedef TYPE_3__ input_ctx_wayland_data_t ;
struct TYPE_14__ {int joyaxis; int joykey; } ;
struct TYPE_13__ {int (* axis ) (int ,int const) ;int (* button ) (int ,int ) ;} ;


 int AXIS_NONE ;
 int BIT_GET (int ,int ) ;
 unsigned int MAX_TOUCHES ;
 int NO_BTN ;
 unsigned int RARCH_BIND_LIST_END ;


 unsigned int RARCH_FIRST_CUSTOM_BIND ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;





 scalar_t__ abs (int ) ;
 int input_joypad_analog (TYPE_11__*,TYPE_2__,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 int input_wl_analog_pressed (TYPE_3__*,struct retro_keybind const*,unsigned int,unsigned int) ;
 int input_wl_lightgun_state (TYPE_3__*,unsigned int) ;
 int input_wl_mouse_state (TYPE_3__*,unsigned int,int) ;
 int input_wl_pointer_state (TYPE_3__*,unsigned int,unsigned int,int) ;
 int input_wl_state_kb (TYPE_3__*,struct retro_keybind const**,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int input_wl_touch_state (TYPE_3__*,unsigned int,unsigned int,int) ;
 int * rarch_keysym_lut ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int const) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int const) ;

__attribute__((used)) static int16_t input_wl_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device, unsigned idx, unsigned id)
{
   input_ctx_wayland_data_t *wl = (input_ctx_wayland_data_t*)data;

   switch (device)
   {
      case 132:
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
               if (BIT_GET(wl->key_state, rarch_keysym_lut[binds[port][i].key]) )
               {
                  ret |= (1 << i);
                  continue;
               }

               if (binds[port])
               {
                  if ((uint16_t)joykey != NO_BTN && wl->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
                  {
                     ret |= (1 << i);
                     continue;
                  }
                  if (((float)abs(wl->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
                  {
                     ret |= (1 << i);
                     continue;
                  }
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
               if (BIT_GET(wl->key_state, rarch_keysym_lut[binds[port][id].key]))
                  return 1;

            if (binds[port])
            {
               if ((uint16_t)joykey != NO_BTN && wl->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
                  return 1;
               if (((float)abs(wl->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
                  return 1;
            }
         }
         break;
      case 133:
         {
            int16_t ret = input_wl_analog_pressed(wl, binds[port], idx, id);
            if (!ret && binds[port])
               ret = input_joypad_analog(wl->joypad, joypad_info, port, idx, id, binds[port]);
            return ret;
         }
      case 131:
         return input_wl_state_kb(wl, binds, port, device, idx, id);
      case 129:
         return input_wl_mouse_state(wl, id, 0);
      case 135:
         return input_wl_mouse_state(wl, id, 1);

      case 128:
         if (idx == 0)
            return input_wl_pointer_state(wl, idx, id,
                  device == 134);
         break;
      case 134:
         if (idx < MAX_TOUCHES)
            return input_wl_touch_state(wl, idx, id,
                  device == 134);
         break;
      case 130:
         return input_wl_lightgun_state(wl, id);
   }

   return 0;
}
