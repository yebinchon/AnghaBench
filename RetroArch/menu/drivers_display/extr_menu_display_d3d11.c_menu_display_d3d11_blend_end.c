
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ userdata; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_5__ {int blend_disable; int context; } ;
typedef TYPE_2__ d3d11_video_t ;


 int D3D11SetBlendState (int ,int ,int *,int ) ;
 int D3D11_DEFAULT_SAMPLE_MASK ;

__attribute__((used)) static void menu_display_d3d11_blend_end(video_frame_info_t *video_info)
{
   d3d11_video_t* d3d11 = (d3d11_video_t*)video_info->userdata;
   D3D11SetBlendState(d3d11->context,
         d3d11->blend_disable, ((void*)0), D3D11_DEFAULT_SAMPLE_MASK);
}
