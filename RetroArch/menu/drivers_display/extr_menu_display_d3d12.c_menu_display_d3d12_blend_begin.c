
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
struct TYPE_7__ {int pipe; int pipe_blend; } ;
struct TYPE_6__ {int cmd; } ;
struct TYPE_9__ {TYPE_2__ sprites; TYPE_1__ queue; } ;
typedef TYPE_4__ d3d12_video_t ;


 int D3D12SetPipelineState (int ,int ) ;

__attribute__((used)) static void menu_display_d3d12_blend_begin(video_frame_info_t *video_info)
{
   d3d12_video_t* d3d12 = (d3d12_video_t*)video_info->userdata;

   d3d12->sprites.pipe = d3d12->sprites.pipe_blend;
   D3D12SetPipelineState(d3d12->queue.cmd, d3d12->sprites.pipe);
}
