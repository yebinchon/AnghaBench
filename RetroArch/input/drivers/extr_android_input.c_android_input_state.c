
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct retro_keybind {int joykey; int joyaxis; } ;
struct TYPE_12__ {float axis_threshold; int joy_idx; TYPE_1__* auto_binds; } ;
typedef TYPE_3__ rarch_joypad_info_t ;
typedef int int16_t ;
struct TYPE_13__ {unsigned int pointer_count; TYPE_2__* pointer; TYPE_5__* joypad; } ;
typedef TYPE_4__ android_input_t ;
struct TYPE_14__ {int (* axis ) (int ,int const) ;int (* button ) (int ,int ) ;} ;
struct TYPE_11__ {int x; int y; int full_x; int full_y; } ;
struct TYPE_10__ {int joyaxis; int joykey; } ;


 int AKEYCODE_BACK ;
 size_t ANDROID_KEYBOARD_PORT ;
 int AXIS_NONE ;
 int BIT_GET (int ,int ) ;
 int NO_BTN ;


 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 size_t RARCH_MENU_TOGGLE ;
 unsigned int RETROK_LAST ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;
 scalar_t__ abs (int ) ;
 int * android_key_state ;
 int android_keyboard_input_pressed (int ) ;
 int android_keyboard_port_input_pressed (struct retro_keybind const*,unsigned int) ;
 int android_lightgun_device_state (TYPE_4__*,unsigned int) ;
 int android_mouse_state (TYPE_4__*,unsigned int) ;
 struct retro_keybind** input_autoconf_binds ;
 int input_joypad_analog (TYPE_5__*,TYPE_3__,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 int * rarch_keysym_lut ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int const) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int const) ;

__attribute__((used)) static int16_t android_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds, unsigned port, unsigned device,
      unsigned idx, unsigned id)
{
   android_input_t *android = (android_input_t*)data;

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
               if ((uint16_t)joykey != NO_BTN && android->joypad->button(
                        joypad_info.joy_idx, (uint16_t)joykey))
               {
                  ret |= (1 << i);
                  continue;
               }
               if (((float)abs(android->joypad->axis(
                              joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               {
                  ret |= (1 << i);
                  continue;
               }
               if (android_keyboard_port_input_pressed(binds[port], i))
                  ret |= (1 << i);
            }
            return ret;
         }
         else
         {

            const uint64_t joykey = (binds[port][id].joykey != NO_BTN)
               ? binds[port][id].joykey : joypad_info.auto_binds[id].joykey;
            const uint32_t joyaxis = (binds[port][id].joyaxis != AXIS_NONE)
               ? binds[port][id].joyaxis : joypad_info.auto_binds[id].joyaxis;
            if ((uint16_t)joykey != NO_BTN && android->joypad->button(
                     joypad_info.joy_idx, (uint16_t)joykey))
               return 1;
            if (((float)abs(android->joypad->axis(
                           joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               return 1;
            if (android_keyboard_port_input_pressed(binds[port], id))
               return 1;
         }
         break;
      case 137:
         if (binds[port])
            return input_joypad_analog(android->joypad, joypad_info,
                  port, idx, id, binds[port]);
         break;
      case 131:
         return (id < RETROK_LAST) && BIT_GET(android_key_state[ANDROID_KEYBOARD_PORT], rarch_keysym_lut[id]);
      case 129:
         return android_mouse_state(android, id);
      case 130:
         return android_lightgun_device_state(android, id);
      case 128:
         switch (id)
         {
            case 134:
               return android->pointer[idx].x;
            case 133:
               return android->pointer[idx].y;
            case 135:
               return (idx < android->pointer_count) &&
                  (android->pointer[idx].x != -0x8000) &&
                  (android->pointer[idx].y != -0x8000);
            case 136:
               return android->pointer_count;
            case 139:
            {
               const struct retro_keybind *keyptr = &input_autoconf_binds[0][RARCH_MENU_TOGGLE];
               if (keyptr->joykey == 0)
                  return android_keyboard_input_pressed(AKEYCODE_BACK);
            }
         }
         break;
      case 138:
         switch (id)
         {
            case 134:
               return android->pointer[idx].full_x;
            case 133:
               return android->pointer[idx].full_y;
            case 135:
               return (idx < android->pointer_count) &&
                  (android->pointer[idx].full_x != -0x8000) &&
                  (android->pointer[idx].full_y != -0x8000);
            case 136:
               return android->pointer_count;
            case 139:
               {
                  const struct retro_keybind *keyptr = &input_autoconf_binds[0][RARCH_MENU_TOGGLE];
                  if (keyptr->joykey == 0)
                     return android_keyboard_input_pressed(AKEYCODE_BACK);
               }
         }
         break;
   }

   return 0;
}
