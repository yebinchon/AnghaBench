
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_fixed_point ;
typedef int png_const_structrp ;
typedef TYPE_1__* png_colorspacerp ;
struct TYPE_3__ {int flags; int gamma; } ;


 int PNG_CHUNK_ERROR ;
 int PNG_CHUNK_WARNING ;
 int PNG_COLORSPACE_FROM_sRGB ;
 int PNG_COLORSPACE_HAVE_GAMMA ;
 int PNG_FP_1 ;
 int png_chunk_report (int ,char*,int ) ;
 scalar_t__ png_gamma_significant (int ) ;
 scalar_t__ png_muldiv (int *,int ,int ,int ) ;

__attribute__((used)) static int
png_colorspace_check_gamma(png_const_structrp png_ptr,
    png_colorspacerp colorspace, png_fixed_point gAMA, int from)
{
   png_fixed_point gtest;

   if ((colorspace->flags & PNG_COLORSPACE_HAVE_GAMMA) != 0 &&
       (png_muldiv(&gtest, colorspace->gamma, PNG_FP_1, gAMA) == 0 ||
      png_gamma_significant(gtest) != 0))
   {






      if ((colorspace->flags & PNG_COLORSPACE_FROM_sRGB) != 0 || from == 2)
      {
         png_chunk_report(png_ptr, "gamma value does not match sRGB",
             PNG_CHUNK_ERROR);

         return from == 2;
      }

      else
      {
         png_chunk_report(png_ptr, "gamma value does not match libpng estimate",
             PNG_CHUNK_WARNING);
         return from == 1;
      }
   }

   return 1;
}
