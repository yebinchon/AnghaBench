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
struct zwp_idle_inhibit_manager_v1 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * idle_inhibitor; int /*<<< orphan*/  surface; struct zwp_idle_inhibit_manager_v1* idle_inhibit_manager; } ;
typedef  TYPE_1__ gfx_ctx_wayland_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct zwp_idle_inhibit_manager_v1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(void *data, bool state)
{
	(void)data;

	gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

    if (!wl->idle_inhibit_manager)
        return false;
    if (state == (!!wl->idle_inhibitor))
        return true;
    if (state)
    {
        FUNC0("[Wayland]: Enabling idle inhibitor\n");
        struct zwp_idle_inhibit_manager_v1 *mgr = wl->idle_inhibit_manager;
        wl->idle_inhibitor = FUNC1(mgr, wl->surface);
    }
    else
    {
        FUNC0("[Wayland]: Disabling the idle inhibitor\n");
        FUNC2(wl->idle_inhibitor);
        wl->idle_inhibitor = NULL;
    }
    return true;
}