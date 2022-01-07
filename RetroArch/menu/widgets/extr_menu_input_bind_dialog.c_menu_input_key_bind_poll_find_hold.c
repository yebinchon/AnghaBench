
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_keybind {int dummy; } ;
struct menu_bind_state {int dummy; } ;


 int INPUT_ACTION_MAX_USERS ;
 unsigned int* input_driver_get_uint (int ) ;
 int menu_input_key_bind_poll_find_hold_pad (struct menu_bind_state*,struct retro_keybind*,unsigned int) ;

bool menu_input_key_bind_poll_find_hold(
      struct menu_bind_state *new_state,
      struct retro_keybind * output
   )
{
   unsigned i;
   unsigned max_users = *(input_driver_get_uint(INPUT_ACTION_MAX_USERS));

   if (!new_state)
      return 0;

   for (i = 0; i < max_users; i++)
   {
      if (!menu_input_key_bind_poll_find_hold_pad( new_state, output, i))
        continue;

      return 1;
   }

   return 0;
}
