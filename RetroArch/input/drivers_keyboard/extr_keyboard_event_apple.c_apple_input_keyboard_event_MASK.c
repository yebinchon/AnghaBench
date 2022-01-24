#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ input_small_keyboard_enable; scalar_t__ input_keyboard_gamepad_enable; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
typedef  enum retro_mod { ____Placeholder_retro_mod } retro_mod ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int MAX_KEYS ; 
 int* apple_key_state ; 
 TYPE_2__* FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned int*,int*) ; 
 scalar_t__ FUNC3 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

void FUNC6(bool down,
      unsigned code, uint32_t character, uint32_t mod, unsigned device)
{
#if TARGET_OS_IPHONE
   settings_t *settings = config_get_ptr();
#endif

   code = FUNC0(code);

#if TARGET_OS_IPHONE
   if (settings->bools.input_keyboard_gamepad_enable)
   {
      if (handle_icade_event(&code, &down))
         character = 0;
      else
         code      = 0;
   }
   else if (settings->bools.input_small_keyboard_enable)
   {
      if (handle_small_keyboard(&code, down))
         character = 0;
   }
#endif

   if (code == 0 || code >= MAX_KEYS)
      return;

   apple_key_state[code] = down;

   FUNC4(down,
         FUNC5(code),
         character, (enum retro_mod)mod, device);
}