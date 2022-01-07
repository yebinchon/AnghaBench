
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ userdata; } ;
typedef TYPE_3__ video_frame_info_t ;
typedef int menu_display_ctx_clearcolor_t ;
struct TYPE_7__ {size_t frame_index; int * desc_handles; } ;
struct TYPE_6__ {int cmd; } ;
struct TYPE_9__ {TYPE_2__ chain; TYPE_1__ queue; } ;
typedef TYPE_4__ d3d12_video_t ;


 int D3D12ClearRenderTargetView (int ,int ,float*,int ,int *) ;

__attribute__((used)) static void menu_display_d3d12_clear_color(
      menu_display_ctx_clearcolor_t* clearcolor, video_frame_info_t *video_info)
{
   d3d12_video_t *d3d12 = (d3d12_video_t*)video_info->userdata;

   if (!d3d12 || !clearcolor)
      return;

   D3D12ClearRenderTargetView(
         d3d12->queue.cmd, d3d12->chain.desc_handles[d3d12->chain.frame_index], (float*)clearcolor,
         0, ((void*)0));
}
