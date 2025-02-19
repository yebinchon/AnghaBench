
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; scalar_t__ userdata; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_7__ {int context; } ;
typedef TYPE_2__ d3d11_video_t ;
struct TYPE_8__ {int bottom; int right; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_3__ D3D11_RECT ;


 int D3D11SetScissorRects (int ,int,TYPE_3__*) ;

void menu_display_d3d11_scissor_end(video_frame_info_t *video_info)
{
   D3D11_RECT rect;
   d3d11_video_t *d3d11 = (d3d11_video_t*)video_info->userdata;

   if (!d3d11)
      return;

   rect.left = 0;
   rect.top = 0;
   rect.right = video_info->width;
   rect.bottom = video_info->height;

   D3D11SetScissorRects(d3d11->context, 1, &rect);
}
