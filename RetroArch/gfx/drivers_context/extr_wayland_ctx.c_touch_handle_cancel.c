
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_touch {int dummy; } ;
typedef int gfx_ctx_wayland_data_t ;
struct TYPE_2__ {int active; int id; unsigned int x; unsigned int y; } ;


 int MAX_TOUCHES ;
 TYPE_1__* active_touch_positions ;
 scalar_t__ num_active_touches ;

__attribute__((used)) static void touch_handle_cancel(void *data,
      struct wl_touch *wl_touch)
{


   int i;
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   for (i = 0; i < MAX_TOUCHES; i++)
   {
      active_touch_positions[i].active = 0;
      active_touch_positions[i].id = -1;
      active_touch_positions[i].x = (unsigned) 0;
      active_touch_positions[i].y = (unsigned) 0;
   }
   num_active_touches = 0;
}
