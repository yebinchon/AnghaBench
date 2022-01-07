
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VGPaint ;
typedef int GX_PAINT_T ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,int ) ;
 int vgDestroyPaint (int ) ;

void gx_destroy_paint(GRAPHICS_RESOURCE_HANDLE res, GX_PAINT_T *p)
{
   GX_CLIENT_STATE_T save;
   VGPaint paint = (VGPaint)p;
   gx_priv_save(&save, res);
   vgDestroyPaint(paint);
   gx_priv_restore(&save);
}
