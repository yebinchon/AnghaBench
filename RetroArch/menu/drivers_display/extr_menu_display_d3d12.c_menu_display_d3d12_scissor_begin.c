
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ userdata; } ;
typedef TYPE_2__ video_frame_info_t ;
struct TYPE_7__ {int cmd; } ;
struct TYPE_9__ {TYPE_1__ queue; } ;
typedef TYPE_3__ d3d12_video_t ;
struct TYPE_10__ {int left; int top; unsigned int right; unsigned int bottom; } ;
typedef TYPE_4__ D3D12_RECT ;


 int D3D12RSSetScissorRects (int ,int,TYPE_4__*) ;

void menu_display_d3d12_scissor_begin(video_frame_info_t *video_info, int x, int y, unsigned width, unsigned height)
{
   D3D12_RECT rect;
   d3d12_video_t *d3d12 = (d3d12_video_t*)video_info->userdata;

   if (!d3d12 || !width || !height)
      return;

   rect.left = x;
   rect.top = y;
   rect.right = width + x;
   rect.bottom = height + y;

   D3D12RSSetScissorRects(d3d12->queue.cmd, 1, &rect);
}
