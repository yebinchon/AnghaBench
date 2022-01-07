
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct menu_bind_state {TYPE_1__* state; } ;
struct TYPE_8__ {int (* poll ) () ;} ;
typedef TYPE_2__ input_device_driver_t ;
struct TYPE_7__ {int * hats; int * axes; int * buttons; } ;


 int HAT_DOWN_MASK ;
 int HAT_LEFT_MASK ;
 int HAT_RIGHT_MASK ;
 int HAT_UP_MASK ;
 unsigned int MENU_MAX_AXES ;
 unsigned int MENU_MAX_BUTTONS ;
 unsigned int MENU_MAX_HATS ;
 int input_joypad_axis_raw (TYPE_2__ const*,unsigned int,unsigned int) ;
 int input_joypad_button_raw (TYPE_2__ const*,unsigned int,unsigned int) ;
 scalar_t__ input_joypad_hat_raw (TYPE_2__ const*,unsigned int,int ,unsigned int) ;
 int stub1 () ;

__attribute__((used)) static void menu_input_key_bind_poll_bind_state_internal(
      const input_device_driver_t *joypad,
      struct menu_bind_state *state,
      unsigned port,
      bool timed_out)
{
   unsigned b, a, h;
    if (!joypad)
        return;

    if (joypad->poll)
        joypad->poll();


    for (b = 0; b < MENU_MAX_BUTTONS; b++)
        state->state[port].buttons[b] =
           input_joypad_button_raw(joypad, port, b);

    for (a = 0; a < MENU_MAX_AXES; a++)
        state->state[port].axes[a] =
           input_joypad_axis_raw(joypad, port, a);

    for (h = 0; h < MENU_MAX_HATS; h++)
    {
        if (input_joypad_hat_raw(joypad, port, HAT_UP_MASK, h))
            state->state[port].hats[h] |= HAT_UP_MASK;
        if (input_joypad_hat_raw(joypad, port, HAT_DOWN_MASK, h))
            state->state[port].hats[h] |= HAT_DOWN_MASK;
        if (input_joypad_hat_raw(joypad, port, HAT_LEFT_MASK, h))
            state->state[port].hats[h] |= HAT_LEFT_MASK;
        if (input_joypad_hat_raw(joypad, port, HAT_RIGHT_MASK, h))
            state->state[port].hats[h] |= HAT_RIGHT_MASK;
    }
}
