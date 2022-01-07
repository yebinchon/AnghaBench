
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Format; } ;
typedef int D3DFORMAT ;
typedef TYPE_1__ D3DDISPLAYMODE ;


 int D3DFMT_X8R8G8B8 ;
 scalar_t__ d3d9_get_adapter_display_mode (int ,int ,TYPE_1__*) ;
 int d3d9_get_rgb565_format () ;
 int g_pD3D9 ;

__attribute__((used)) static D3DFORMAT d3d9_get_color_format_backbuffer(bool rgb32, bool windowed)
{
   D3DFORMAT fmt = D3DFMT_X8R8G8B8;




   if (windowed)
   {
      D3DDISPLAYMODE display_mode;
      if (d3d9_get_adapter_display_mode(g_pD3D9, 0, &display_mode))
         fmt = display_mode.Format;
   }

   return fmt;
}
