#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wl_cursor_image {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  hotspot_y; int /*<<< orphan*/  hotspot_x; } ;
struct TYPE_5__ {int visible; int /*<<< orphan*/  serial; int /*<<< orphan*/ * surface; TYPE_1__* default_cursor; } ;
struct TYPE_6__ {TYPE_2__ cursor; int /*<<< orphan*/  wl_pointer; } ;
typedef  TYPE_3__ gfx_ctx_wayland_data_t ;
struct TYPE_4__ {struct wl_cursor_image** images; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wl_cursor_image*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, bool state)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   if (!wl->wl_pointer)
      return;

   if (state)
   {
      struct wl_cursor_image *image = wl->cursor.default_cursor->images[0];
      FUNC1(wl->wl_pointer, wl->cursor.serial, wl->cursor.surface, image->hotspot_x, image->hotspot_y);
      FUNC2(wl->cursor.surface, FUNC0(image), 0, 0);
      FUNC4(wl->cursor.surface, 0, 0, image->width, image->height);
      FUNC3(wl->cursor.surface);
   }
   else
      FUNC1(wl->wl_pointer, wl->cursor.serial, NULL, 0, 0);

   wl->cursor.visible = state;
}