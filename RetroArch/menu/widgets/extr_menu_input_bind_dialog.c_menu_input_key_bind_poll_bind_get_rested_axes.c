
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct menu_bind_state {TYPE_1__* axis_state; } ;
typedef int input_device_driver_t ;
struct TYPE_2__ {void** rested_axes; } ;


 unsigned int MENU_MAX_AXES ;
 int * input_driver_get_joypad_driver () ;
 int * input_driver_get_sec_joypad_driver () ;
 void* input_joypad_axis_raw (int const*,unsigned int,unsigned int) ;

__attribute__((used)) static void menu_input_key_bind_poll_bind_get_rested_axes(
      struct menu_bind_state *state, unsigned port)
{
   unsigned a;
   const input_device_driver_t *joypad =
      input_driver_get_joypad_driver();
   const input_device_driver_t *sec_joypad =
      input_driver_get_sec_joypad_driver();

   if (!state || !joypad)
      return;


   for (a = 0; a < MENU_MAX_AXES; a++)
      state->axis_state[port].rested_axes[a] =
         input_joypad_axis_raw(joypad, port, a);

   if (sec_joypad)
   {

        for (a = 0; a < MENU_MAX_AXES; a++)
            state->axis_state[port].rested_axes[a] =
               input_joypad_axis_raw(sec_joypad, port, a);
   }
}
