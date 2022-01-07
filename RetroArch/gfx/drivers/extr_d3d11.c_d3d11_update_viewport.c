
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {float width; float height; int y; int x; } ;
struct TYPE_7__ {float x; float y; float z; float w; } ;
struct TYPE_6__ {float Width; float Height; float MaxDepth; int TopLeftY; int TopLeftX; } ;
struct TYPE_8__ {TYPE_2__ output_size; TYPE_1__ viewport; } ;
struct TYPE_9__ {int resize_render_targets; int resize_viewport; TYPE_5__ vp; TYPE_3__ frame; scalar_t__ shader_preset; int keep_aspect; } ;
typedef TYPE_4__ d3d11_video_t ;


 int video_driver_update_viewport (TYPE_5__*,int,int ) ;

__attribute__((used)) static void d3d11_update_viewport(void* data, bool force_full)
{
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;

   video_driver_update_viewport(&d3d11->vp, force_full, d3d11->keep_aspect);

   d3d11->frame.viewport.TopLeftX = d3d11->vp.x;
   d3d11->frame.viewport.TopLeftY = d3d11->vp.y;
   d3d11->frame.viewport.Width = d3d11->vp.width;
   d3d11->frame.viewport.Height = d3d11->vp.height;
   d3d11->frame.viewport.MaxDepth = 0.0f;
   d3d11->frame.viewport.MaxDepth = 1.0f;

   if (d3d11->shader_preset && (d3d11->frame.output_size.x != d3d11->vp.width ||
            d3d11->frame.output_size.y != d3d11->vp.height))
      d3d11->resize_render_targets = 1;

   d3d11->frame.output_size.x = d3d11->vp.width;
   d3d11->frame.output_size.y = d3d11->vp.height;
   d3d11->frame.output_size.z = 1.0f / d3d11->vp.width;
   d3d11->frame.output_size.w = 1.0f / d3d11->vp.height;

   d3d11->resize_viewport = 0;
}
