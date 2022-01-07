
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int VGfloat ;
typedef int VGPath ;
typedef int VGPaint ;
typedef int VCOS_STATUS_T ;
typedef int GX_PAINT_T ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int VCOS_EINVAL ;
 int VCOS_ENOMEM ;
 int VCOS_SUCCESS ;
 int VG_FILL_PATH ;
 int VG_PAINT_LINEAR_GRADIENT ;
 int VG_PATH_CAPABILITY_ALL ;
 int VG_PATH_DATATYPE_S_32 ;
 int VG_PATH_FORMAT_STANDARD ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,int ) ;
 int vcos_assert (int) ;
 int vgCreatePath (int ,int ,double,double,int,int,int ) ;
 int vgDestroyPath (int ) ;
 int vgDrawPath (int ,int ) ;
 scalar_t__ vgGetError () ;
 int vgSetPaint (int ,int ) ;
 int vgSetParameterfv (int ,int ,int,int*) ;
 int vguPolygon (int ,int*,int,int) ;

VCOS_STATUS_T gx_render_arrowhead(GRAPHICS_RESOURCE_HANDLE res,
                                  uint32_t tip_x, uint32_t tip_y,
                                  int32_t w, int32_t h,
                                  GX_PAINT_T *p)
{
   VGfloat gradient[4];
   VGPaint paint = (VGPaint)p;
   VGPath path;
   VCOS_STATUS_T status = VCOS_SUCCESS;

   GX_CLIENT_STATE_T save;
   gx_priv_save(&save, res);

   if (!paint)
   {
      vcos_assert(0);
      status = VCOS_EINVAL;
      goto finish;
   }

   gradient[0] = 0.0; gradient[1] = 0.0;
   gradient[2] = w; gradient[2] = 0.0;

   vgSetParameterfv(paint, VG_PAINT_LINEAR_GRADIENT, 4, gradient);
   vgSetPaint(paint, VG_FILL_PATH);

   path = vgCreatePath(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_S_32,
                       1.0, 0.0, 8, 8, VG_PATH_CAPABILITY_ALL);
   if (!path)
   {
      status = VCOS_ENOMEM;
      goto finish;
   }
   VGfloat points[] = {
      (VGfloat)tip_x, (VGfloat)tip_y,
      (VGfloat)tip_x + w, (VGfloat)tip_y + h/2,
      (VGfloat)tip_x + w, (VGfloat)tip_y - h/2,
   };

   vguPolygon(path, points, 3, 1);

   vgDrawPath(path, VG_FILL_PATH);
   vgDestroyPath(path);

   vcos_assert(vgGetError()==0);

finish:
   gx_priv_restore(&save);
   return status;
}
