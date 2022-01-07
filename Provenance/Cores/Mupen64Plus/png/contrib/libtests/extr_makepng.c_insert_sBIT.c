
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_infop ;
struct TYPE_3__ {int red; int green; int blue; int gray; int alpha; } ;
typedef TYPE_1__ png_color_8 ;
typedef int * png_charpp ;


 int const PNG_COLOR_MASK_ALPHA ;
 int const PNG_COLOR_MASK_COLOR ;
 int const PNG_COLOR_MASK_PALETTE ;
 void* bval (int ,int ,unsigned int const) ;
 int png_error (int ,char*) ;
 unsigned int png_get_bit_depth (int ,int ) ;
 int png_get_color_type (int ,int ) ;
 int png_set_sBIT (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
insert_sBIT(png_structp png_ptr, png_infop info_ptr, int nparams,
      png_charpp params)
{
   const int ct = png_get_color_type(png_ptr, info_ptr);
   const int c = (ct & PNG_COLOR_MASK_COLOR ? 3 : 1) +
      (ct & PNG_COLOR_MASK_ALPHA ? 1 : 0);
   const unsigned int maxval =
      ct & PNG_COLOR_MASK_PALETTE ? 8U : png_get_bit_depth(png_ptr, info_ptr);
   png_color_8 sBIT;

   if (nparams != c)
      png_error(png_ptr, "sBIT: incorrect parameter count");

   if (ct & PNG_COLOR_MASK_COLOR)
   {
      sBIT.red = bval(png_ptr, params[0], maxval);
      sBIT.green = bval(png_ptr, params[1], maxval);
      sBIT.blue = bval(png_ptr, params[2], maxval);
      sBIT.gray = 42;
   }

   else
   {
      sBIT.red = sBIT.green = sBIT.blue = 42;
      sBIT.gray = bval(png_ptr, params[0], maxval);
   }

   if (ct & PNG_COLOR_MASK_ALPHA)
      sBIT.alpha = bval(png_ptr, params[nparams-1], maxval);

   else
      sBIT.alpha = 42;

   png_set_sBIT(png_ptr, info_ptr, &sBIT);
}
