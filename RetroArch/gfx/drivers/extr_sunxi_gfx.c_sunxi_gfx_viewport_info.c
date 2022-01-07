
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_viewport {int full_height; int height; int full_width; int width; scalar_t__ y; scalar_t__ x; } ;
struct sunxi_video {int src_height; int src_width; } ;



__attribute__((used)) static void sunxi_gfx_viewport_info(void *data, struct video_viewport *vp)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   if (!vp || !_dispvars)
      return;

   vp->x = vp->y = 0;

   vp->width = vp->full_width = _dispvars->src_width;
   vp->height = vp->full_height = _dispvars->src_height;
}
