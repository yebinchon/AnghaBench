
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softfilter_implementation {int dummy; } ;
typedef int softfilter_simd_mask_t ;


 struct softfilter_implementation const scanline2x_generic ;

const struct softfilter_implementation *softfilter_get_implementation(
      softfilter_simd_mask_t simd)
{
   (void)simd;
   return &scanline2x_generic;
}
