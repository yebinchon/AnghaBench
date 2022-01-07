
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_viewport {int full_height; int height; int full_width; int width; scalar_t__ y; scalar_t__ x; } ;
struct drm_video {int core_height; int core_width; } ;



__attribute__((used)) static void drm_gfx_viewport_info(void *data, struct video_viewport *vp)
{
   struct drm_video *vid = data;

   if (!vid)
      return;

   vp->x = vp->y = 0;

   vp->width = vp->full_width = vid->core_width;
   vp->height = vp->full_height = vid->core_height;
}
