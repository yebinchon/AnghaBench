
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ redx; scalar_t__ redy; scalar_t__ greenx; scalar_t__ greeny; scalar_t__ bluex; scalar_t__ bluey; scalar_t__ whitex; int whitey; } ;
typedef TYPE_1__ png_xy ;
typedef scalar_t__ png_fixed_point ;
struct TYPE_6__ {scalar_t__ red_X; scalar_t__ red_Y; scalar_t__ red_Z; scalar_t__ green_X; scalar_t__ green_Y; scalar_t__ green_Z; scalar_t__ blue_X; scalar_t__ blue_Y; scalar_t__ blue_Z; } ;
typedef TYPE_2__ png_XYZ ;


 scalar_t__ PNG_FP_1 ;
 scalar_t__ png_muldiv (scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ png_reciprocal (scalar_t__) ;

__attribute__((used)) static int
png_XYZ_from_xy(png_XYZ *XYZ, const png_xy *xy)
{
   png_fixed_point red_inverse, green_inverse, blue_scale;
   png_fixed_point left, right, denominator;






   if (xy->redx < 0 || xy->redx > PNG_FP_1) return 1;
   if (xy->redy < 0 || xy->redy > PNG_FP_1-xy->redx) return 1;
   if (xy->greenx < 0 || xy->greenx > PNG_FP_1) return 1;
   if (xy->greeny < 0 || xy->greeny > PNG_FP_1-xy->greenx) return 1;
   if (xy->bluex < 0 || xy->bluex > PNG_FP_1) return 1;
   if (xy->bluey < 0 || xy->bluey > PNG_FP_1-xy->bluex) return 1;
   if (xy->whitex < 0 || xy->whitex > PNG_FP_1) return 1;
   if (xy->whitey < 5 || xy->whitey > PNG_FP_1-xy->whitex) return 1;
   if (png_muldiv(&left, xy->greenx-xy->bluex, xy->redy - xy->bluey, 7) == 0)
      return 2;
   if (png_muldiv(&right, xy->greeny-xy->bluey, xy->redx - xy->bluex, 7) == 0)
      return 2;
   denominator = left - right;


   if (png_muldiv(&left, xy->greenx-xy->bluex, xy->whitey-xy->bluey, 7) == 0)
      return 2;
   if (png_muldiv(&right, xy->greeny-xy->bluey, xy->whitex-xy->bluex, 7) == 0)
      return 2;






   if (png_muldiv(&red_inverse, xy->whitey, denominator, left-right) == 0 ||
       red_inverse <= xy->whitey )
      return 1;


   if (png_muldiv(&left, xy->redy-xy->bluey, xy->whitex-xy->bluex, 7) == 0)
      return 2;
   if (png_muldiv(&right, xy->redx-xy->bluex, xy->whitey-xy->bluey, 7) == 0)
      return 2;
   if (png_muldiv(&green_inverse, xy->whitey, denominator, left-right) == 0 ||
       green_inverse <= xy->whitey)
      return 1;




   blue_scale = png_reciprocal(xy->whitey) - png_reciprocal(red_inverse) -
       png_reciprocal(green_inverse);
   if (blue_scale <= 0)
      return 1;



   if (png_muldiv(&XYZ->red_X, xy->redx, PNG_FP_1, red_inverse) == 0)
      return 1;
   if (png_muldiv(&XYZ->red_Y, xy->redy, PNG_FP_1, red_inverse) == 0)
      return 1;
   if (png_muldiv(&XYZ->red_Z, PNG_FP_1 - xy->redx - xy->redy, PNG_FP_1,
       red_inverse) == 0)
      return 1;

   if (png_muldiv(&XYZ->green_X, xy->greenx, PNG_FP_1, green_inverse) == 0)
      return 1;
   if (png_muldiv(&XYZ->green_Y, xy->greeny, PNG_FP_1, green_inverse) == 0)
      return 1;
   if (png_muldiv(&XYZ->green_Z, PNG_FP_1 - xy->greenx - xy->greeny, PNG_FP_1,
       green_inverse) == 0)
      return 1;

   if (png_muldiv(&XYZ->blue_X, xy->bluex, blue_scale, PNG_FP_1) == 0)
      return 1;
   if (png_muldiv(&XYZ->blue_Y, xy->bluey, blue_scale, PNG_FP_1) == 0)
      return 1;
   if (png_muldiv(&XYZ->blue_Z, PNG_FP_1 - xy->bluex - xy->bluey, blue_scale,
       PNG_FP_1) == 0)
      return 1;

   return 0;
}
