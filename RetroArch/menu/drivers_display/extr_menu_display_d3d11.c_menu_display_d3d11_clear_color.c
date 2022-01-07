
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ userdata; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int menu_display_ctx_clearcolor_t ;
struct TYPE_5__ {int renderTargetView; int context; } ;
typedef TYPE_2__ d3d11_video_t ;


 int D3D11ClearRenderTargetView (int ,int ,float*) ;

__attribute__((used)) static void menu_display_d3d11_clear_color(
      menu_display_ctx_clearcolor_t* clearcolor,
      video_frame_info_t *video_info)
{
   d3d11_video_t *d3d11 = (d3d11_video_t*)video_info->userdata;

   if (!d3d11 || !clearcolor)
      return;

   D3D11ClearRenderTargetView(d3d11->context,
         d3d11->renderTargetView, (float*)clearcolor);
}
