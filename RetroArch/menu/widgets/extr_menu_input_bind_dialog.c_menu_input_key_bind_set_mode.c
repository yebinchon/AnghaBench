
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int input_bind_timeout; int input_bind_hold; int * input_joypad_map; } ;
struct TYPE_12__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_13__ {unsigned int index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;
typedef int menu_handle_t ;
struct TYPE_14__ {int cb; int * userdata; } ;
typedef TYPE_4__ input_keyboard_ctx_wait_t ;
typedef enum menu_input_binds_ctl_state { ____Placeholder_menu_input_binds_ctl_state } menu_input_binds_ctl_state ;
struct TYPE_15__ {int timer_timeout; int timer_hold; } ;


 int RARCH_INPUT_KEYBOARD_CTL_START_WAIT_KEYS ;
 TYPE_2__* config_get_ptr () ;
 int input_keyboard_ctl (int ,TYPE_4__*) ;
 int menu_bind_port ;
 int * menu_driver_get_ptr () ;
 TYPE_6__ menu_input_binds ;
 int menu_input_key_bind_custom_bind_keyboard_cb ;
 int menu_input_key_bind_poll_bind_get_rested_axes (TYPE_6__*,int ) ;
 int menu_input_key_bind_poll_bind_state (TYPE_6__*,int ,int) ;
 int menu_input_key_bind_set_mode_common (int,TYPE_3__*) ;
 int rarch_timer_begin_new_time (int *,int ) ;

bool menu_input_key_bind_set_mode(
      enum menu_input_binds_ctl_state state, void *data)
{
   unsigned index_offset;
   input_keyboard_ctx_wait_t keys;
   rarch_setting_t *setting = (rarch_setting_t*)data;
   settings_t *settings = config_get_ptr();
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!setting || !menu)
      return 0;
   if (menu_input_key_bind_set_mode_common(state, setting) == -1)
      return 0;

   index_offset = setting->index_offset;
   menu_bind_port = settings->uints.input_joypad_map[index_offset];

   menu_input_key_bind_poll_bind_get_rested_axes(
         &menu_input_binds, menu_bind_port);
   menu_input_key_bind_poll_bind_state(
         &menu_input_binds, menu_bind_port, 0);

   rarch_timer_begin_new_time(&menu_input_binds.timer_hold, settings->uints.input_bind_hold);
   rarch_timer_begin_new_time(&menu_input_binds.timer_timeout, settings->uints.input_bind_timeout);

   keys.userdata = menu;
   keys.cb = menu_input_key_bind_custom_bind_keyboard_cb;

   input_keyboard_ctl(RARCH_INPUT_KEYBOARD_CTL_START_WAIT_KEYS, &keys);
   return 1;
}
