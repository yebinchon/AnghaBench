
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fb_var_screeninfo {float pixclock; float xres; float left_margin; float right_margin; float hsync_len; float yres; float upper_margin; float lower_margin; float vsync_len; } ;
struct TYPE_6__ {TYPE_2__* omap; } ;
typedef TYPE_3__ omap_video_t ;
struct TYPE_5__ {TYPE_1__* current_state; } ;
struct TYPE_4__ {struct fb_var_screeninfo si; } ;



__attribute__((used)) static float omap_get_refresh_rate(void *data)
{
   omap_video_t *vid = (omap_video_t*)data;
   struct fb_var_screeninfo *s = &vid->omap->current_state->si;

   return 1000000.0f / s->pixclock /
          (s->xres + s->left_margin + s->right_margin + s->hsync_len) * 1000000.0f /
          (s->yres + s->upper_margin + s->lower_margin + s->vsync_len);
}
