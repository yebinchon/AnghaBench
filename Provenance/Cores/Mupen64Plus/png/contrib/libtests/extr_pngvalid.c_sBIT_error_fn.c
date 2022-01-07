
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_infop ;
struct TYPE_3__ {int red; int green; int blue; int gray; int alpha; } ;
typedef TYPE_1__ png_color_8 ;
typedef int png_byte ;


 scalar_t__ PNG_COLOR_TYPE_PALETTE ;
 int png_get_bit_depth (int ,int ) ;
 scalar_t__ png_get_color_type (int ,int ) ;
 int png_set_sBIT (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
sBIT_error_fn(png_structp pp, png_infop pi)
{
   png_byte bit_depth;
   png_color_8 bad;

   if (png_get_color_type(pp, pi) == PNG_COLOR_TYPE_PALETTE)
      bit_depth = 8;

   else
      bit_depth = png_get_bit_depth(pp, pi);


   bad.red = bad.green = bad.blue = bad.gray = bad.alpha =
      (png_byte)(bit_depth+1);
   png_set_sBIT(pp, pi, &bad);
}
