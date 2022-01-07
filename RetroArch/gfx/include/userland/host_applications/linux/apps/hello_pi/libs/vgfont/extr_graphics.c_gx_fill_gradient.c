
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef double VGfloat ;
typedef int VGPath ;
typedef int VGPaint ;
typedef int VCOS_STATUS_T ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; } ;
typedef int GX_PAINT_T ;
typedef int GX_CLIENT_STATE_T ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;


 scalar_t__ GRAPHICS_RESOURCE_HEIGHT ;
 scalar_t__ GRAPHICS_RESOURCE_WIDTH ;
 int VCOS_EINVAL ;
 int VCOS_ENOMEM ;
 int VCOS_SUCCESS ;
 int VG_FILL_PATH ;
 int VG_PAINT_LINEAR_GRADIENT ;
 int VG_PATH_CAPABILITY_ALL ;
 int VG_PATH_DATATYPE_S_32 ;
 int VG_PATH_FORMAT_STANDARD ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,TYPE_1__*) ;
 int vcos_assert (int) ;
 int vgCreatePath (int ,int ,double,double,int,int,int ) ;
 int vgDestroyPath (int ) ;
 int vgDrawPath (int ,int ) ;
 scalar_t__ vgGetError () ;
 int vgSetPaint (int ,int ) ;
 int vgSetParameterfv (int ,int ,int,double*) ;
 int vguRoundRect (int ,double,double,double,double,double,double) ;

VCOS_STATUS_T gx_fill_gradient(GRAPHICS_RESOURCE_HANDLE dest,
                               uint32_t x, uint32_t y,
                               uint32_t width, uint32_t height,
                               uint32_t radius,
                               GX_PAINT_T *p)
{


   VGfloat gradient[4] = {0.0, 0.0, 0.0, 0.0};
   VGPaint paint = (VGPaint)p;
   VGPath path;
   GX_CLIENT_STATE_T save;
   VCOS_STATUS_T status = VCOS_SUCCESS;

   if (!paint)
      return VCOS_EINVAL;

   gx_priv_save(&save, dest);

   if (width == GRAPHICS_RESOURCE_WIDTH)
      width = dest->width;

   if (height == GRAPHICS_RESOURCE_HEIGHT)
      height = dest->height;

   gradient[2] = width;

   vgSetParameterfv(paint, VG_PAINT_LINEAR_GRADIENT, 4, gradient);
   vgSetPaint(paint, VG_FILL_PATH);

   path = vgCreatePath(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_S_32,
                       1.0, 0.0, 8, 8, VG_PATH_CAPABILITY_ALL);
   if (!path)
   {
      status = VCOS_ENOMEM;
      goto finish;
   }

   vguRoundRect(path, (VGfloat)x, (VGfloat)y, (VGfloat)width, (VGfloat)height,
                (VGfloat)radius, (VGfloat)radius);
   vgDrawPath(path, VG_FILL_PATH);
   vgDestroyPath(path);

   vcos_assert(vgGetError() == 0);

finish:
   gx_priv_restore(&save);

   return status;
}
