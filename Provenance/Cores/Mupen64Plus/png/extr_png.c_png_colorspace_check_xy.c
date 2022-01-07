
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_xy ;
typedef int png_XYZ ;


 int png_XYZ_from_xy (int *,int const*) ;
 scalar_t__ png_colorspace_endpoints_match (int const*,int *,int) ;
 int png_xy_from_XYZ (int *,int *) ;

__attribute__((used)) static int
png_colorspace_check_xy(png_XYZ *XYZ, const png_xy *xy)
{
   int result;
   png_xy xy_test;


   result = png_XYZ_from_xy(XYZ, xy);
   if (result != 0)
      return result;

   result = png_xy_from_XYZ(&xy_test, XYZ);
   if (result != 0)
      return result;

   if (png_colorspace_endpoints_match(xy, &xy_test,
       5 ) != 0)
      return 0;


   return 1;
}
