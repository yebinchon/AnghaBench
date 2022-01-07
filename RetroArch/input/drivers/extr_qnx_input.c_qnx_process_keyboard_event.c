
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int screen_event_t ;
struct TYPE_3__ {int keyboard_state; } ;
typedef TYPE_1__ qnx_input_t ;


 int BIT_CLEAR (int ,int) ;
 int BIT_SET (int ,int) ;
 int KEY_DOWN ;
 int KEY_REPEAT ;
 int RETRO_DEVICE_KEYBOARD ;
 int SCREEN_PROPERTY_KEY_CAP ;
 int SCREEN_PROPERTY_KEY_FLAGS ;
 int SCREEN_PROPERTY_KEY_MODIFIERS ;
 int input_keyboard_event (int,unsigned int,int ,int,int ) ;
 unsigned int input_keymaps_translate_keysym_to_rk (int) ;
 int screen_get_event_property_iv (int ,int ,int*) ;

__attribute__((used)) static void qnx_process_keyboard_event(
      qnx_input_t *qnx,
      screen_event_t event, int type)
{

    int flags = 0;
    screen_get_event_property_iv(event, SCREEN_PROPERTY_KEY_FLAGS, &flags);

    int cap = 0;
    screen_get_event_property_iv(event, SCREEN_PROPERTY_KEY_CAP, &cap);

    int mod = 0;
    screen_get_event_property_iv(event, SCREEN_PROPERTY_KEY_MODIFIERS, &mod);


    unsigned keycode = input_keymaps_translate_keysym_to_rk(cap);
    bool keydown = flags & KEY_DOWN;
    bool keyrepeat = flags & KEY_REPEAT;


    if(!keyrepeat)
    {
        input_keyboard_event(keydown, keycode, 0, mod, RETRO_DEVICE_KEYBOARD);
    }


    if(keydown && !keyrepeat)
    {
       BIT_SET(qnx->keyboard_state, cap);
    }
    else if(!keydown && !keyrepeat)
    {
       BIT_CLEAR(qnx->keyboard_state, cap);
    }
}
