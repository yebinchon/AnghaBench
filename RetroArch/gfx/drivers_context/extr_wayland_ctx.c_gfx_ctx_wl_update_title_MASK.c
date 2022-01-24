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
typedef  int /*<<< orphan*/  title ;
struct TYPE_2__ {scalar_t__ zxdg_toplevel; scalar_t__ xdg_toplevel; scalar_t__ deco; } ;
typedef  TYPE_1__ gfx_ctx_wayland_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZXDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 

__attribute__((used)) static void FUNC4(void *data, void *data2)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;
   char title[128];

   title[0] = '\0';

   FUNC0(title, sizeof(title));

   if (wl && title[0])
   {
      if (wl->xdg_toplevel || wl->zxdg_toplevel)
      {
         if (wl->deco)
         {
            FUNC2(wl->deco,
                  ZXDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE);
         }
      }
      if (wl->xdg_toplevel)
         FUNC1(wl->xdg_toplevel, title);
      else if (wl->zxdg_toplevel)
         FUNC3(wl->zxdg_toplevel, title);
   }
}