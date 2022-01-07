
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_viewport {unsigned int full_width; unsigned int full_height; int height; int width; int y; int x; } ;
struct TYPE_3__ {int Height; int Width; int Y; int X; } ;
struct TYPE_4__ {TYPE_1__ final_viewport; } ;
typedef TYPE_2__ d3d9_video_t ;


 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static void d3d9_viewport_info(void *data, struct video_viewport *vp)
{
   unsigned width, height;
   d3d9_video_t *d3d = (d3d9_video_t*)data;

   if (!vp)
      return;

   video_driver_get_size(&width, &height);

   vp->x = d3d->final_viewport.X;
   vp->y = d3d->final_viewport.Y;
   vp->width = d3d->final_viewport.Width;
   vp->height = d3d->final_viewport.Height;

   vp->full_width = width;
   vp->full_height = height;
}
