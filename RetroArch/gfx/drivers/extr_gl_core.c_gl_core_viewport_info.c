
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {unsigned int full_width; unsigned int full_height; unsigned int y; unsigned int height; } ;
struct TYPE_2__ {unsigned int video_width; unsigned int video_height; struct video_viewport vp; } ;
typedef TYPE_1__ gl_core_t ;



__attribute__((used)) static void gl_core_viewport_info(void *data, struct video_viewport *vp)
{
   unsigned top_y, top_dist;
   gl_core_t *gl = (gl_core_t*)data;
   unsigned width = gl->video_width;
   unsigned height = gl->video_height;


   *vp = gl->vp;
   vp->full_width = width;
   vp->full_height = height;


   top_y = vp->y + vp->height;
   top_dist = height - top_y;
   vp->y = top_dist;
}
