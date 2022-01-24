#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct zxdg_shell_v6 {int dummy; } ;
struct zxdg_decoration_manager_v1 {int dummy; } ;
struct zwp_idle_inhibit_manager_v1 {int dummy; } ;
struct xdg_wm_base {int dummy; } ;
struct wl_shm {int dummy; } ;
struct wl_seat {int dummy; } ;
struct wl_registry {int dummy; } ;
struct wl_output {int dummy; } ;
struct wl_compositor {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  link; struct wl_output* output; int /*<<< orphan*/  global_id; } ;
typedef  TYPE_2__ output_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  dpy; } ;
struct TYPE_8__ {struct zxdg_decoration_manager_v1* deco_manager; struct zwp_idle_inhibit_manager_v1* idle_inhibit_manager; struct wl_seat* seat; struct wl_shm* shm; struct zxdg_shell_v6* zxdg_shell; struct xdg_wm_base* xdg_shell; TYPE_1__ input; int /*<<< orphan*/  all_outputs; struct wl_compositor* compositor; } ;
typedef  TYPE_3__ gfx_ctx_wayland_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  output_listener ; 
 int /*<<< orphan*/  seat_listener ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  wl_compositor_interface ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wl_output*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  wl_output_interface ; 
 scalar_t__ FUNC5 (struct wl_registry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wl_seat*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  wl_seat_interface ; 
 int /*<<< orphan*/  wl_shm_interface ; 
 int /*<<< orphan*/  xdg_wm_base_interface ; 
 int /*<<< orphan*/  zwp_idle_inhibit_manager_v1_interface ; 
 int /*<<< orphan*/  zxdg_decoration_manager_v1_interface ; 
 int /*<<< orphan*/  zxdg_shell_v6_interface ; 

__attribute__((used)) static void FUNC7(void *data, struct wl_registry *reg,
      uint32_t id, const char *interface, uint32_t version)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   (void)version;

   if (FUNC1(interface, "wl_compositor"))
      wl->compositor = (struct wl_compositor*)FUNC5(reg,
            id, &wl_compositor_interface, 3);
   else if (FUNC1(interface, "wl_output"))
   {
      output_info_t *oi = (output_info_t*)
         FUNC0(1, sizeof(output_info_t));

      oi->global_id     = id;
      oi->output        = (struct wl_output*)FUNC5(reg,
            id, &wl_output_interface, 2);
      FUNC4(oi->output, &output_listener, oi);
      FUNC3(&wl->all_outputs, &oi->link);
      FUNC2(wl->input.dpy);
   }
   else if (FUNC1(interface, "xdg_wm_base"))
      wl->xdg_shell = (struct xdg_wm_base*)
         FUNC5(reg, id, &xdg_wm_base_interface, 1);
   else if (FUNC1(interface, "zxdg_shell_v6"))
      wl->zxdg_shell = (struct zxdg_shell_v6*)
         FUNC5(reg, id, &zxdg_shell_v6_interface, 1);
   else if (FUNC1(interface, "wl_shm"))
      wl->shm = (struct wl_shm*)FUNC5(reg, id, &wl_shm_interface, 1);
   else if (FUNC1(interface, "wl_seat"))
   {
      wl->seat = (struct wl_seat*)FUNC5(reg, id, &wl_seat_interface, 2);
      FUNC6(wl->seat, &seat_listener, wl);
   }
   else if (FUNC1(interface, "zwp_idle_inhibit_manager_v1"))
      wl->idle_inhibit_manager = (struct zwp_idle_inhibit_manager_v1*)FUNC5(
                                  reg, id, &zwp_idle_inhibit_manager_v1_interface, 1);
   else if (FUNC1(interface, "zxdg_decoration_manager_v1"))
      wl->deco_manager = (struct zxdg_decoration_manager_v1*)FUNC5(
                                  reg, id, &zxdg_decoration_manager_v1_interface, 1);
}