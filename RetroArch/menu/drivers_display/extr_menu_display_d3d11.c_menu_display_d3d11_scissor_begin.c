
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ userdata; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_7__ {int context; } ;
typedef TYPE_2__ d3d11_video_t ;
struct TYPE_8__ {int left; int top; unsigned int right; unsigned int bottom; } ;
typedef TYPE_3__ D3D11_RECT ;


 int D3D11SetScissorRects (int ,int,TYPE_3__*) ;

void menu_display_d3d11_scissor_begin(video_frame_info_t *video_info, int x, int y, unsigned width, unsigned height)
{
   D3D11_RECT rect;
   d3d11_video_t *d3d11 = (d3d11_video_t*)video_info->userdata;

   if (!d3d11 || !width || !height)
      return;

   rect.left = x;
   rect.top = y;
   rect.right = width + x;
   rect.bottom = height + y;

   D3D11SetScissorRects(d3d11->context, 1, &rect);
}
