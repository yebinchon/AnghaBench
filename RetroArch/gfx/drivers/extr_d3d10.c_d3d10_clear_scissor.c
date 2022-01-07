
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int height; int width; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_8__ {int device; } ;
typedef TYPE_2__ d3d10_video_t ;
struct TYPE_9__ {int bottom; int right; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_3__ D3D10_RECT ;


 int D3D10SetScissorRects (int ,int,TYPE_3__*) ;

__attribute__((used)) static void d3d10_clear_scissor(d3d10_video_t *d3d10, video_frame_info_t *video_info)
{
   D3D10_RECT scissor_rect;

   scissor_rect.left = 0;
   scissor_rect.top = 0;
   scissor_rect.right = video_info->width;
   scissor_rect.bottom = video_info->height;

   D3D10SetScissorRects(d3d10->device, 1, &scissor_rect);
}
