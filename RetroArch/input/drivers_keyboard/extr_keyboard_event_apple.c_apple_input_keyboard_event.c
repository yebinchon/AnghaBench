
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ input_small_keyboard_enable; scalar_t__ input_keyboard_gamepad_enable; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
typedef enum retro_mod { ____Placeholder_retro_mod } retro_mod ;


 unsigned int HIDKEY (unsigned int) ;
 unsigned int MAX_KEYS ;
 int* apple_key_state ;
 TYPE_2__* config_get_ptr () ;
 scalar_t__ handle_icade_event (unsigned int*,int*) ;
 scalar_t__ handle_small_keyboard (unsigned int*,int) ;
 int input_keyboard_event (int,int ,scalar_t__,int,unsigned int) ;
 int input_keymaps_translate_keysym_to_rk (unsigned int) ;

void apple_input_keyboard_event(bool down,
      unsigned code, uint32_t character, uint32_t mod, unsigned device)
{




   code = HIDKEY(code);
   if (code == 0 || code >= MAX_KEYS)
      return;

   apple_key_state[code] = down;

   input_keyboard_event(down,
         input_keymaps_translate_keysym_to_rk(code),
         character, (enum retro_mod)mod, device);
}
