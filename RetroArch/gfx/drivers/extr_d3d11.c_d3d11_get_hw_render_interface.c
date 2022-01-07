
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct retro_hw_render_interface {int dummy; } ;
struct TYPE_3__ {int enable; int iface; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
typedef TYPE_2__ d3d11_video_t ;



__attribute__((used)) static bool
d3d11_get_hw_render_interface(void* data, const struct retro_hw_render_interface** iface)
{
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;
   *iface = (const struct retro_hw_render_interface*)&d3d11->hw.iface;
   return d3d11->hw.enable;
}
