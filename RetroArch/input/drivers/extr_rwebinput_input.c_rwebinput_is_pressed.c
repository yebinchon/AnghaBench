
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct retro_keybind {int key; scalar_t__ joykey; scalar_t__ joyaxis; int mbutton; scalar_t__ valid; } ;
struct TYPE_11__ {TYPE_2__* joypad; int mouse; } ;
typedef TYPE_3__ rwebinput_input_t ;
struct TYPE_12__ {float axis_threshold; int joy_idx; TYPE_1__* auto_binds; } ;
typedef TYPE_4__ rarch_joypad_info_t ;
struct TYPE_13__ {int keyboard_mapping_blocked; } ;
struct TYPE_10__ {int (* axis ) (int ,scalar_t__ const) ;scalar_t__ (* button ) (int ,scalar_t__) ;} ;
struct TYPE_9__ {scalar_t__ joykey; scalar_t__ joyaxis; } ;


 scalar_t__ AXIS_NONE ;
 scalar_t__ NO_BTN ;
 unsigned int RARCH_BIND_LIST_END ;
 unsigned int RARCH_GAME_FOCUS_TOGGLE ;
 int RETROK_LAST ;
 scalar_t__ abs (int ) ;
 TYPE_8__ input_rwebinput ;
 scalar_t__ rwebinput_key_pressed (TYPE_3__*,int) ;
 int rwebinput_mouse_state (int *,int ,int) ;
 scalar_t__ stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__ const) ;

__attribute__((used)) static bool rwebinput_is_pressed(rwebinput_input_t *rwebinput,
   rarch_joypad_info_t joypad_info, const struct retro_keybind *binds,
   unsigned port, unsigned id)
{
   if (id < RARCH_BIND_LIST_END)
   {
      const struct retro_keybind *bind = &binds[id];
      int key = bind->key;

      if ((key < RETROK_LAST) && rwebinput_key_pressed(rwebinput, key))
         if ((id == RARCH_GAME_FOCUS_TOGGLE) || !input_rwebinput.keyboard_mapping_blocked)
            return 1;

      if (bind->valid)
      {

         const uint64_t joykey = (binds[id].joykey != NO_BTN)
            ? binds[id].joykey : joypad_info.auto_binds[id].joykey;
         const uint32_t joyaxis = (binds[id].joyaxis != AXIS_NONE)
            ? binds[id].joyaxis : joypad_info.auto_binds[id].joyaxis;

         if (port == 0 && !!rwebinput_mouse_state(&rwebinput->mouse,
                  bind->mbutton, 0))
            return 1;
         if ((uint16_t)joykey != NO_BTN && rwebinput->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
            return 1;
         if (((float)abs(rwebinput->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
            return 1;
      }
   }

   return 0;
}
