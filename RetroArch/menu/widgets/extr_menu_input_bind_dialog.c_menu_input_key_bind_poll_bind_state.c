
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct menu_bind_state {int skip; TYPE_4__* state; } ;
struct TYPE_6__ {float axis_threshold; int * auto_binds; scalar_t__ joy_idx; } ;
typedef TYPE_1__ rarch_joypad_info_t ;
struct TYPE_7__ {scalar_t__ (* input_state ) (void*,TYPE_1__,int *,int ,int ,int ,int ) ;} ;
typedef TYPE_2__ input_driver_t ;
typedef int input_device_driver_t ;
struct TYPE_8__ {int * mbuttons; } ;


 unsigned int MENU_MAX_MBUTTONS ;
 int RETROK_RETURN ;
 int RETRO_DEVICE_KEYBOARD ;
 int * input_driver_get_joypad_driver () ;
 int * input_driver_get_sec_joypad_driver () ;
 void* input_get_data () ;
 TYPE_2__* input_get_ptr () ;
 int input_mouse_button_raw (unsigned int,unsigned int) ;
 int memset (TYPE_4__*,int ,int) ;
 int menu_input_key_bind_poll_bind_state_internal (int const*,struct menu_bind_state*,unsigned int,int) ;
 scalar_t__ stub1 (void*,TYPE_1__,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void menu_input_key_bind_poll_bind_state(
      struct menu_bind_state *state,
      unsigned port,
      bool timed_out)
{
   unsigned b;
   rarch_joypad_info_t joypad_info;
   input_driver_t *input_ptr = input_get_ptr();
   void *input_data = input_get_data();
   const input_device_driver_t *joypad =
      input_driver_get_joypad_driver();
   const input_device_driver_t *sec_joypad =
      input_driver_get_sec_joypad_driver();

   if (!state)
      return;

   memset(state->state, 0, sizeof(state->state));


    for (b = 0; b < MENU_MAX_MBUTTONS; b++)
        state->state[port].mbuttons[b] =
           input_mouse_button_raw(port, b);

   joypad_info.joy_idx = 0;
   joypad_info.auto_binds = ((void*)0);
   joypad_info.axis_threshold = 0.0f;

   state->skip = timed_out || input_ptr->input_state(input_data,
         joypad_info,
         ((void*)0),
         0, RETRO_DEVICE_KEYBOARD, 0, RETROK_RETURN);

   menu_input_key_bind_poll_bind_state_internal(
         joypad, state, port, timed_out);

   if (sec_joypad)
      menu_input_key_bind_poll_bind_state_internal(
            sec_joypad, state, port, timed_out);
}
