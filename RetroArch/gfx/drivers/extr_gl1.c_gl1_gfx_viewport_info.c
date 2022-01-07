
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {unsigned int full_width; unsigned int full_height; unsigned int y; unsigned int height; } ;
struct TYPE_2__ {struct video_viewport vp; } ;
typedef TYPE_1__ gl1_t ;


 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static void gl1_gfx_viewport_info(void *data,
      struct video_viewport *vp)
{
   unsigned width, height;
   unsigned top_y, top_dist;
   gl1_t *gl1 = (gl1_t*)data;

   video_driver_get_size(&width, &height);

   *vp = gl1->vp;
   vp->full_width = width;
   vp->full_height = height;


   top_y = vp->y + vp->height;
   top_dist = height - top_y;
   vp->y = top_dist;
}
