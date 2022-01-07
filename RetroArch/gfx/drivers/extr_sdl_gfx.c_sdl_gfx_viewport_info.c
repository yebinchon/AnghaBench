
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_viewport {int full_height; int height; int full_width; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {TYPE_1__* screen; } ;
typedef TYPE_2__ sdl_video_t ;
struct TYPE_3__ {int h; int w; } ;



__attribute__((used)) static void sdl_gfx_viewport_info(void *data, struct video_viewport *vp)
{
   sdl_video_t *vid = (sdl_video_t*)data;
   vp->x = 0;
   vp->y = 0;
   vp->width = vp->full_width = vid->screen->w;
   vp->height = vp->full_height = vid->screen->h;
}
