
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_xy ;
typedef int png_const_structrp ;
typedef TYPE_1__* png_colorspacerp ;
typedef int png_XYZ ;
struct TYPE_4__ {int flags; } ;


 int PNG_COLORSPACE_INVALID ;
 int png_benign_error (int ,char*) ;
 int png_colorspace_check_XYZ (int *,int *) ;
 int png_colorspace_set_xy_and_XYZ (int ,TYPE_1__*,int *,int *,int) ;
 int png_error (int ,char*) ;

int
png_colorspace_set_endpoints(png_const_structrp png_ptr,
    png_colorspacerp colorspace, const png_XYZ *XYZ_in, int preferred)
{
   png_XYZ XYZ = *XYZ_in;
   png_xy xy;

   switch (png_colorspace_check_XYZ(&xy, &XYZ))
   {
      case 0:
         return png_colorspace_set_xy_and_XYZ(png_ptr, colorspace, &xy, &XYZ,
             preferred);

      case 1:

         colorspace->flags |= PNG_COLORSPACE_INVALID;
         png_benign_error(png_ptr, "invalid end points");
         break;

      default:
         colorspace->flags |= PNG_COLORSPACE_INVALID;
         png_error(png_ptr, "internal error checking chromaticities");
   }

   return 0;
}
