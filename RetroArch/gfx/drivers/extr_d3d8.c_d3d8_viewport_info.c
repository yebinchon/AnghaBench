
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_viewport {int dummy; } ;
typedef int d3d8_video_t ;


 int d3d8_renderchain_viewport_info (int *,struct video_viewport*) ;

__attribute__((used)) static void d3d8_viewport_info(void *data, struct video_viewport *vp)
{
   d3d8_video_t *d3d = (d3d8_video_t*)data;

   if (d3d)
      d3d8_renderchain_viewport_info(d3d, vp);
}
