#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wl_seat {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * wl_touch; int /*<<< orphan*/ * wl_pointer; int /*<<< orphan*/ * wl_keyboard; } ;
typedef  TYPE_1__ gfx_ctx_wayland_data_t ;

/* Variables and functions */
 unsigned int WL_SEAT_CAPABILITY_KEYBOARD ; 
 unsigned int WL_SEAT_CAPABILITY_POINTER ; 
 unsigned int WL_SEAT_CAPABILITY_TOUCH ; 
 int /*<<< orphan*/  keyboard_listener ; 
 int /*<<< orphan*/  pointer_listener ; 
 int /*<<< orphan*/  touch_listener ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct wl_seat*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wl_seat*) ; 
 int /*<<< orphan*/ * FUNC6 (struct wl_seat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *data,
      struct wl_seat *seat, unsigned caps)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if ((caps & WL_SEAT_CAPABILITY_KEYBOARD) && !wl->wl_keyboard)
   {
      wl->wl_keyboard = FUNC4(seat);
      FUNC0(wl->wl_keyboard, &keyboard_listener, wl);
   }
   else if (!(caps & WL_SEAT_CAPABILITY_KEYBOARD) && wl->wl_keyboard)
   {
      FUNC1(wl->wl_keyboard);
      wl->wl_keyboard = NULL;
   }
   if ((caps & WL_SEAT_CAPABILITY_POINTER) && !wl->wl_pointer)
   {
      wl->wl_pointer = FUNC5(seat);
      FUNC2(wl->wl_pointer, &pointer_listener, wl);
   }
   else if (!(caps & WL_SEAT_CAPABILITY_POINTER) && wl->wl_pointer)
   {
      FUNC3(wl->wl_pointer);
      wl->wl_pointer = NULL;
   }
   if ((caps & WL_SEAT_CAPABILITY_TOUCH) && !wl->wl_touch)
   {
      wl->wl_touch = FUNC6(seat);
      FUNC7(wl->wl_touch, &touch_listener, wl);
   }
   else if (!(caps & WL_SEAT_CAPABILITY_TOUCH) && wl->wl_touch)
   {
      FUNC8(wl->wl_touch);
      wl->wl_touch = NULL;
   }

}