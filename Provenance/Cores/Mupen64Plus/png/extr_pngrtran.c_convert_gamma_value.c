
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structrp ;
typedef int png_fixed_point ;


 double PNG_FP_1 ;
 double PNG_FP_MAX ;
 double PNG_FP_MIN ;
 double floor (double) ;
 int png_fixed_error (int ,char*) ;

__attribute__((used)) static png_fixed_point
convert_gamma_value(png_structrp png_ptr, double output_gamma)
{







   if (output_gamma > 0 && output_gamma < 128)
      output_gamma *= PNG_FP_1;


   output_gamma = floor(output_gamma + .5);

   if (output_gamma > PNG_FP_MAX || output_gamma < PNG_FP_MIN)
      png_fixed_error(png_ptr, "gamma value");

   return (png_fixed_point)output_gamma;
}
