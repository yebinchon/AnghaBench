
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* lpVtbl; } ;
struct TYPE_4__ {int (* DrawText ) (TYPE_2__*,int ,int ,unsigned int,int ,int ,int ) ;} ;
typedef int LPRECT ;
typedef int LPD3DXSPRITE ;
typedef int LPCTSTR ;
typedef TYPE_2__ ID3DXFont ;
typedef int DWORD ;
typedef int D3DCOLOR ;


 int stub1 (TYPE_2__*,int ,int ,unsigned int,int ,int ,int ) ;

void d3d8x_font_draw_text(void *data,
      void *sprite_data, void *string_data,
      unsigned count, void *rect_data,
      unsigned format, unsigned color)
{







}
