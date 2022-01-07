
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_shader {int dummy; } ;
struct TYPE_2__ {struct video_shader* shader_preset; } ;
typedef TYPE_1__ d3d12_video_t ;



__attribute__((used)) static struct video_shader* d3d12_gfx_get_current_shader(void* data)
{
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   if (!d3d12)
      return ((void*)0);

   return d3d12->shader_preset;
}
