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
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_keyboard {int dummy; } ;
struct wl_array {int dummy; } ;
struct TYPE_3__ {int keyboard_focus; } ;
struct TYPE_4__ {TYPE_1__ input; } ;
typedef  TYPE_2__ gfx_ctx_wayland_data_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(void* data,
      struct wl_keyboard* keyboard,
      uint32_t serial,
      struct wl_surface* surface,
      struct wl_array* keys)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   wl->input.keyboard_focus   = true;
}