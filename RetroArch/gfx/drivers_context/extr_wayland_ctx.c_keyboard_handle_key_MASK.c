#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct wl_keyboard {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  key_state; } ;
struct TYPE_4__ {TYPE_1__ input; } ;
typedef  TYPE_2__ gfx_ctx_wayland_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RETRO_DEVICE_KEYBOARD ; 
 scalar_t__ WL_KEYBOARD_KEY_STATE_PRESSED ; 
 scalar_t__ WL_KEYBOARD_KEY_STATE_RELEASED ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(void *data,
      struct wl_keyboard *keyboard,
      uint32_t serial,
      uint32_t time,
      uint32_t key,
      uint32_t state)
{
   (void)serial;
   (void)time;
   (void)keyboard;

   int value                  = 1;
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if (state == WL_KEYBOARD_KEY_STATE_PRESSED)
   {
      FUNC1(wl->input.key_state, key);
      value = 1;
   }
   else if (state == WL_KEYBOARD_KEY_STATE_RELEASED)
   {
      FUNC0(wl->input.key_state, key);
      value = 0;
   }

#ifdef HAVE_XKBCOMMON
   if (handle_xkb(key, value) == 0)
      return;
#endif
   FUNC3(value,
			FUNC4(key),
         0, 0, RETRO_DEVICE_KEYBOARD);
}