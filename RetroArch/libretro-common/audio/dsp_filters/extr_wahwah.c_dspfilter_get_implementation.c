
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dspfilter_implementation {int dummy; } ;
typedef int dspfilter_simd_mask_t ;


 struct dspfilter_implementation const wahwah_plug ;

const struct dspfilter_implementation *
dspfilter_get_implementation(dspfilter_simd_mask_t mask)
{
   (void)mask;
   return &wahwah_plug;
}
