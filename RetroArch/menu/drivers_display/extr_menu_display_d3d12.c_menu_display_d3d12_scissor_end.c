
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int height; int width; scalar_t__ userdata; } ;
typedef TYPE_2__ video_frame_info_t ;
struct TYPE_7__ {int cmd; } ;
struct TYPE_9__ {TYPE_1__ queue; } ;
typedef TYPE_3__ d3d12_video_t ;
struct TYPE_10__ {int bottom; int right; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_4__ D3D12_RECT ;


 int D3D12RSSetScissorRects (int ,int,TYPE_4__*) ;

void menu_display_d3d12_scissor_end(video_frame_info_t *video_info)
{
   D3D12_RECT rect;
   d3d12_video_t *d3d12 = (d3d12_video_t*)video_info->userdata;

   if (!d3d12)
      return;

   rect.left = 0;
   rect.top = 0;
   rect.right = video_info->width;
   rect.bottom = video_info->height;

   D3D12RSSetScissorRects(d3d12->queue.cmd, 1, &rect);
}
