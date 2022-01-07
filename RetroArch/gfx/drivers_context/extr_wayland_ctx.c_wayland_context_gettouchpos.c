
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gfx_ctx_wayland_data_t ;
struct TYPE_2__ {unsigned int x; unsigned int y; int active; } ;


 unsigned int MAX_TOUCHES ;
 TYPE_1__* active_touch_positions ;

bool wayland_context_gettouchpos(void *data, unsigned id,
      unsigned* touch_x, unsigned* touch_y)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if (id >= MAX_TOUCHES)
       return 0;
   *touch_x = active_touch_positions[id].x;
   *touch_y = active_touch_positions[id].y;
   return active_touch_positions[id].active;
}
