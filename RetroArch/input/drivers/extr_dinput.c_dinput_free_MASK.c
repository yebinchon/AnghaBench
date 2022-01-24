#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dinput_input {struct dinput_input* joypad_driver_name; scalar_t__ mouse; scalar_t__ keyboard; TYPE_1__* joypad; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) () ;} ;
typedef  int /*<<< orphan*/ * LPDIRECTINPUT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dinput_input*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dinput_input*) ; 
 int /*<<< orphan*/ * g_dinput_ctx ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *data)
{
   struct dinput_input *di = (struct dinput_input*)data;
   LPDIRECTINPUT8 hold_ctx = g_dinput_ctx;

   if (di)
   {
      /* Prevent a joypad driver to kill our context prematurely. */
      g_dinput_ctx = NULL;
      if (di->joypad)
         di->joypad->destroy();
      g_dinput_ctx = hold_ctx;

      /* Clear any leftover pointers. */
      FUNC1(di);

      if (di->keyboard)
         FUNC0(di->keyboard);

      if (di->mouse)
         FUNC0(di->mouse);

      if (di->joypad_driver_name)
         FUNC3(di->joypad_driver_name);

      FUNC3(di);
   }

   FUNC2();
}