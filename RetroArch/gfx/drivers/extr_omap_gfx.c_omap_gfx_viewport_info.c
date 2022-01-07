
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {int full_height; int height; int full_width; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_2__ {int height; int width; } ;
typedef TYPE_1__ omap_video_t ;



__attribute__((used)) static void omap_gfx_viewport_info(void *data, struct video_viewport *vp)
{
   omap_video_t *vid = (omap_video_t*)data;

   if (!vid)
      return;

   vp->x = vp->y = 0;

   vp->width = vp->full_width = vid->width;
   vp->height = vp->full_height = vid->height;
}
