
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct retro_keybind {unsigned int key; int mbutton; int joyaxis; int joykey; int valid; } ;
struct dinput_input {int* state; int mouse_rel_x; int mouse_rel_y; TYPE_3__* joypad; } ;
struct TYPE_8__ {float axis_threshold; int joy_idx; TYPE_1__* auto_binds; } ;
typedef TYPE_2__ rarch_joypad_info_t ;
typedef int int16_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;
struct TYPE_10__ {int keyboard_mapping_blocked; } ;
struct TYPE_9__ {int (* axis ) (int ,int const) ;int (* button ) (int ,int ) ;} ;
struct TYPE_7__ {int joyaxis; int joykey; } ;


 int AXIS_NONE ;
 int NO_BTN ;
 unsigned int RARCH_BIND_LIST_END ;


 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RARCH_GAME_FOCUS_TOGGLE ;
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
 scalar_t__ abs (int ) ;
 int dinput_lightgun_aiming_state (struct dinput_input*,unsigned int,unsigned int) ;
 int dinput_mouse_button_pressed (struct dinput_input*,unsigned int,int ) ;
 int dinput_mouse_state (struct dinput_input*,unsigned int,unsigned int) ;
 int dinput_mouse_state_screen (struct dinput_input*,unsigned int,unsigned int) ;
 int dinput_pointer_state (struct dinput_input*,unsigned int,unsigned int,int) ;
 int dinput_pressed_analog (struct dinput_input*,struct retro_keybind const*,unsigned int,unsigned int) ;
 TYPE_5__ input_dinput ;
 int input_joypad_analog (TYPE_3__*,TYPE_2__,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 size_t* rarch_keysym_lut ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int const) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int const) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int const) ;

__attribute__((used)) static int16_t dinput_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds, unsigned port,
      unsigned device, unsigned idx, unsigned id)
{
   struct dinput_input *di = (struct dinput_input*)data;

   switch (device)
   {
      case 132:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {
               if (binds[port][i].key < RETROK_LAST)
               {
                  if (di->state[rarch_keysym_lut[(enum retro_key)binds[port][i].key]] & 0x80)
                     if ((i == RARCH_GAME_FOCUS_TOGGLE) || !input_dinput.keyboard_mapping_blocked)
                     {
                        ret |= (1 << i);
                        continue;
                     }
               }

               if (binds[port][i].valid)
               {

                     const uint64_t joykey = (binds[port][i].joykey != NO_BTN)
                     ? binds[port][i].joykey : joypad_info.auto_binds[i].joykey;
                  const uint32_t joyaxis = (binds[port][i].joyaxis != AXIS_NONE)
                     ? binds[port][i].joyaxis : joypad_info.auto_binds[i].joyaxis;

                  if (dinput_mouse_button_pressed(
                           di, port, binds[port][i].mbutton))
                  {
                     ret |= (1 << i);
                     continue;
                  }

                  if ((uint16_t)joykey != NO_BTN
                        && di->joypad->button(
                           joypad_info.joy_idx, (uint16_t)joykey))
                  {
                     ret |= (1 << i);
                     continue;
                  }

                  if (((float)abs(di->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
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
            if (id < RARCH_BIND_LIST_END)
            {
               if (binds[port][id].key < RETROK_LAST)
               {
                  if (di->state[rarch_keysym_lut[(enum retro_key)binds[port][id].key]] & 0x80)
                     if ((id == RARCH_GAME_FOCUS_TOGGLE) || !input_dinput.keyboard_mapping_blocked)
                        return 1;
               }
               if (binds[port][id].valid)
               {

                     const uint64_t joykey = (binds[port][id].joykey != NO_BTN)
                     ? binds[port][id].joykey : joypad_info.auto_binds[id].joykey;
                  const uint32_t joyaxis = (binds[port][id].joyaxis != AXIS_NONE)
                     ? binds[port][id].joyaxis : joypad_info.auto_binds[id].joyaxis;

                  if (dinput_mouse_button_pressed(di, port, binds[port][id].mbutton))
                     return 1;
                  if ((uint16_t)joykey != NO_BTN
                        && di->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
                     return 1;
                  if (((float)abs(di->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
                     return 1;
               }
            }
         }
         break;
      case 131:
         return (id < RETROK_LAST) && di->state[rarch_keysym_lut[(enum retro_key)id]] & 0x80;
      case 150:
         if (binds[port])
         {
            int16_t ret = dinput_pressed_analog(di, binds[port], idx, id);
            if (!ret)
               ret = input_joypad_analog(di->joypad, joypad_info,
                     port, idx, id, binds[port]);
            return ret;
         }
         return 0;

      case 129:
         return dinput_mouse_state(di, port, id);

      case 152:
         return dinput_mouse_state_screen(di, port, id);

      case 128:
      case 151:
         return dinput_pointer_state(di, idx, id,
               device == 151);

      case 130:
         switch (id)
         {

            case 139:
            case 138:
            case 142:
               return dinput_lightgun_aiming_state( di, idx, id);


            case 135:
            case 140:
            case 149:
            case 148:
            case 147:
            case 136:
            case 137:
            case 143:
            case 146:
            case 145:
            case 144:
            case 141:
               {
                  unsigned new_id = 0;
                  switch (id)
                  {
                     case 135:
                        new_id = RARCH_LIGHTGUN_TRIGGER;
                        break;
                     case 140:
                        new_id = RARCH_LIGHTGUN_RELOAD;
                        break;
                     case 149:
                        new_id = RARCH_LIGHTGUN_AUX_A;
                        break;
                     case 148:
                        new_id = RARCH_LIGHTGUN_AUX_B;
                        break;
                     case 147:
                        new_id = RARCH_LIGHTGUN_AUX_C;
                        break;
                     case 136:
                        new_id = RARCH_LIGHTGUN_START;
                        break;
                     case 137:
                        new_id = RARCH_LIGHTGUN_SELECT;
                        break;
                     case 143:
                        new_id = RARCH_LIGHTGUN_DPAD_UP;
                        break;
                     case 146:
                        new_id = RARCH_LIGHTGUN_DPAD_DOWN;
                        break;
                     case 145:
                        new_id = RARCH_LIGHTGUN_DPAD_LEFT;
                        break;
                     case 144:
                        new_id = RARCH_LIGHTGUN_DPAD_RIGHT;
                        break;
                     case 141:
                        new_id = RARCH_LIGHTGUN_START;
                        break;
                  }
                  if (binds[port][new_id].key < RETROK_LAST)
                  {
                     if (di->state[rarch_keysym_lut[(enum retro_key)binds[port][new_id].key]] & 0x80)
                        if ((new_id == RARCH_GAME_FOCUS_TOGGLE) || !input_dinput.keyboard_mapping_blocked)
                           return 1;
                  }
                  if (binds[port][new_id].valid)
                  {

                        const uint64_t joykey = (binds[port][new_id].joykey != NO_BTN)
                        ? binds[port][new_id].joykey : joypad_info.auto_binds[new_id].joykey;
                     const uint32_t joyaxis = (binds[port][new_id].joyaxis != AXIS_NONE)
                        ? binds[port][new_id].joyaxis : joypad_info.auto_binds[new_id].joyaxis;

                     if (dinput_mouse_button_pressed(di, port, binds[port][new_id].mbutton))
                        return 1;
                     if ((uint16_t)joykey != NO_BTN
                           && di->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
                        return 1;
                     if (((float)abs(di->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
                        return 1;
                  }
               }
               break;

            case 134:
               return di->mouse_rel_x;
            case 133:
               return di->mouse_rel_y;
         }
   break;
   }

   return 0;
}
