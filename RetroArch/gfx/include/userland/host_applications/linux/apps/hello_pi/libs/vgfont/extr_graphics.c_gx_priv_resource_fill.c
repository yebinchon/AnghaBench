
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VGfloat ;
typedef int VCOS_STATUS_T ;
typedef int GRAPHICS_RESOURCE_HANDLE ;


 int GX_LOG (char*,int) ;
 int VCOS_SUCCESS ;
 int VG_CLEAR_COLOR ;
 int VG_FALSE ;
 int VG_SCISSORING ;
 int gx_priv_colour_to_paint (int ,int *) ;
 int vcos_assert (int ) ;
 int vgClear (int ,int ,int ,int ) ;
 int vgGetError () ;
 int vgSetfv (int ,int,int *) ;
 int vgSeti (int ,int ) ;

VCOS_STATUS_T gx_priv_resource_fill(GRAPHICS_RESOURCE_HANDLE res,
                               uint32_t x,
                               uint32_t y,
                               uint32_t width,
                               uint32_t height,
                               uint32_t fill_colour )
{
   VGfloat vg_clear_colour[4];

   gx_priv_colour_to_paint(fill_colour, vg_clear_colour);
   vgSeti(VG_SCISSORING, VG_FALSE);

   vgSetfv(VG_CLEAR_COLOR, 4, vg_clear_colour);
   vgClear(x, y, width, height);

   int err = vgGetError();
   if (err)
   {
      GX_LOG("vg error %x filling area", err);
      vcos_assert(0);
   }

   return VCOS_SUCCESS;
}
