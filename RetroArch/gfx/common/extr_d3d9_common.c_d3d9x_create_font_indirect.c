
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ID3DXFont {int dummy; } ;
typedef int LPDIRECT3DDEVICE9 ;
typedef int D3DXFONT_DESC ;


 int D3D9CreateFontIndirect (int ,int *,struct ID3DXFont**) ;
 scalar_t__ SUCCEEDED (int ) ;

bool d3d9x_create_font_indirect(void *_dev,
      void *desc, void **font_data)
{
   return 0;
}
