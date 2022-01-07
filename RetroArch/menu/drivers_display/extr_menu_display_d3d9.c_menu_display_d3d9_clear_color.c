
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ userdata; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_7__ {float a; float r; float g; float b; } ;
typedef TYPE_2__ menu_display_ctx_clearcolor_t ;
struct TYPE_8__ {scalar_t__ dev; } ;
typedef TYPE_3__ d3d9_video_t ;
typedef scalar_t__ LPDIRECT3DDEVICE9 ;
typedef int DWORD ;


 int BYTE_CLAMP (float) ;
 int D3DCOLOR_ARGB (int ,int ,int ,int ) ;
 int D3D_COMM_CLEAR_TARGET ;
 int d3d9_clear (scalar_t__,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void menu_display_d3d9_clear_color(
      menu_display_ctx_clearcolor_t *clearcolor,
      video_frame_info_t *video_info)
{
   LPDIRECT3DDEVICE9 dev;
   DWORD clear_color = 0;
   d3d9_video_t *d3d = (d3d9_video_t*)video_info->userdata;

   if (!d3d || !clearcolor)
      return;

   dev = (LPDIRECT3DDEVICE9)d3d->dev;

   clear_color = D3DCOLOR_ARGB(
         BYTE_CLAMP(clearcolor->a * 255.0f),
         BYTE_CLAMP(clearcolor->r * 255.0f),
         BYTE_CLAMP(clearcolor->g * 255.0f),
         BYTE_CLAMP(clearcolor->b * 255.0f)
         );

   d3d9_clear(dev, 0, ((void*)0), D3D_COMM_CLEAR_TARGET, clear_color, 0, 0);
}
