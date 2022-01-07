
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zwp_idle_inhibit_manager_v1 {int dummy; } ;
struct TYPE_2__ {int * idle_inhibitor; int surface; struct zwp_idle_inhibit_manager_v1* idle_inhibit_manager; } ;
typedef TYPE_1__ gfx_ctx_wayland_data_t ;


 int RARCH_LOG (char*) ;
 int * zwp_idle_inhibit_manager_v1_create_inhibitor (struct zwp_idle_inhibit_manager_v1*,int ) ;
 int zwp_idle_inhibitor_v1_destroy (int *) ;

__attribute__((used)) static bool gfx_ctx_wl_suppress_screensaver(void *data, bool state)
{
 (void)data;

 gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

    if (!wl->idle_inhibit_manager)
        return 0;
    if (state == (!!wl->idle_inhibitor))
        return 1;
    if (state)
    {
        RARCH_LOG("[Wayland]: Enabling idle inhibitor\n");
        struct zwp_idle_inhibit_manager_v1 *mgr = wl->idle_inhibit_manager;
        wl->idle_inhibitor = zwp_idle_inhibit_manager_v1_create_inhibitor(mgr, wl->surface);
    }
    else
    {
        RARCH_LOG("[Wayland]: Disabling the idle inhibitor\n");
        zwp_idle_inhibitor_v1_destroy(wl->idle_inhibitor);
        wl->idle_inhibitor = ((void*)0);
    }
    return 1;
}
