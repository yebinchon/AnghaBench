
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {int dummy; } ;
struct TYPE_2__ {struct video_viewport vp; } ;
typedef TYPE_1__ d3d12_video_t ;



__attribute__((used)) static void d3d12_gfx_viewport_info(void* data, struct video_viewport* vp)
{
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   *vp = d3d12->vp;
}
