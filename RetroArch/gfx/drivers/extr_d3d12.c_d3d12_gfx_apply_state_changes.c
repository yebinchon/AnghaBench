
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resize_viewport; } ;
typedef TYPE_1__ d3d12_video_t ;



__attribute__((used)) static void d3d12_gfx_apply_state_changes(void* data)
{
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   if (d3d12)
      d3d12->resize_viewport = 1;
}
