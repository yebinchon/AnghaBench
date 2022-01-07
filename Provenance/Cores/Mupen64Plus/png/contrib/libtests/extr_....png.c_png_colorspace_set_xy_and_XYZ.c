
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_xy ;
typedef int png_const_structrp ;
typedef TYPE_1__* png_colorspacerp ;
typedef int png_XYZ ;
struct TYPE_3__ {int flags; int end_points_XYZ; int end_points_xy; } ;


 int PNG_COLORSPACE_CANCEL (int) ;
 int PNG_COLORSPACE_ENDPOINTS_MATCH_sRGB ;
 int PNG_COLORSPACE_HAVE_ENDPOINTS ;
 int PNG_COLORSPACE_INVALID ;
 int png_benign_error (int ,char*) ;
 scalar_t__ png_colorspace_endpoints_match (int const*,int *,int) ;
 int sRGB_xy ;

__attribute__((used)) static int
png_colorspace_set_xy_and_XYZ(png_const_structrp png_ptr,
    png_colorspacerp colorspace, const png_xy *xy, const png_XYZ *XYZ,
    int preferred)
{
   if ((colorspace->flags & PNG_COLORSPACE_INVALID) != 0)
      return 0;





   if (preferred < 2 &&
       (colorspace->flags & PNG_COLORSPACE_HAVE_ENDPOINTS) != 0)
   {



      if (png_colorspace_endpoints_match(xy, &colorspace->end_points_xy,
          100) == 0)
      {
         colorspace->flags |= PNG_COLORSPACE_INVALID;
         png_benign_error(png_ptr, "inconsistent chromaticities");
         return 0;
      }


      if (preferred == 0)
         return 1;
   }

   colorspace->end_points_xy = *xy;
   colorspace->end_points_XYZ = *XYZ;
   colorspace->flags |= PNG_COLORSPACE_HAVE_ENDPOINTS;




   if (png_colorspace_endpoints_match(xy, &sRGB_xy, 1000) != 0)
      colorspace->flags |= PNG_COLORSPACE_ENDPOINTS_MATCH_sRGB;

   else
      colorspace->flags &= PNG_COLORSPACE_CANCEL(
         PNG_COLORSPACE_ENDPOINTS_MATCH_sRGB);

   return 2;
}
