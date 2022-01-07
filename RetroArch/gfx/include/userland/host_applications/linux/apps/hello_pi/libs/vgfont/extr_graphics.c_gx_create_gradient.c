
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef double VGfloat ;
typedef scalar_t__ VGPaint ;
typedef int GX_PAINT_T ;
typedef int GX_CLIENT_STATE_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 scalar_t__ VG_INVALID_HANDLE ;
 int VG_PAINT_COLOR_RAMP_STOPS ;
 int VG_PAINT_TYPE ;
 int VG_PAINT_TYPE_LINEAR_GRADIENT ;
 int gx_priv_colour_to_paint (int ,double*) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,int ) ;
 int vcos_assert (int ) ;
 int vcos_log (char*,int ) ;
 scalar_t__ vgCreatePaint () ;
 int vgGetError () ;
 int vgSetParameterfv (scalar_t__,int ,int,double*) ;
 int vgSetParameteri (scalar_t__,int ,int ) ;

GX_PAINT_T *gx_create_gradient(GRAPHICS_RESOURCE_HANDLE res,
                               uint32_t start_colour,
                               uint32_t end_colour)
{

   VGfloat fill_stops[10];
   GX_CLIENT_STATE_T save;
   VGPaint paint = VG_INVALID_HANDLE;

   gx_priv_save(&save, res);

   paint = vgCreatePaint();
   if (!paint)
   {
      gx_priv_restore(&save);
      vcos_log("Could not create paint: vg %d\n", vgGetError());
      vcos_assert(0);
      goto finish;
   }

   fill_stops[0] = 0.0;
   gx_priv_colour_to_paint(start_colour, fill_stops+1);

   fill_stops[5] = 1.0;
   gx_priv_colour_to_paint(end_colour, fill_stops+6);

   vgSetParameteri(paint, VG_PAINT_TYPE, VG_PAINT_TYPE_LINEAR_GRADIENT);
   vgSetParameterfv(paint, VG_PAINT_COLOR_RAMP_STOPS, 5*2, fill_stops);

finish:
   gx_priv_restore(&save);
   return (GX_PAINT_T*)paint;
}
