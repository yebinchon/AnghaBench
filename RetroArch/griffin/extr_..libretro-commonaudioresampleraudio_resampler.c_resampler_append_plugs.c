
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* init ) (int *,double,int,int ) ;} ;
typedef TYPE_1__ retro_resampler_t ;
typedef int resampler_simd_mask_t ;
typedef enum resampler_quality { ____Placeholder_resampler_quality } resampler_quality ;


 int cpu_features_get () ;
 int resampler_config ;
 void* stub1 (int *,double,int,int ) ;

__attribute__((used)) static bool resampler_append_plugs(void **re,
      const retro_resampler_t **backend,
      enum resampler_quality quality,
      double bw_ratio)
{
   resampler_simd_mask_t mask = (resampler_simd_mask_t)cpu_features_get();

   if (*backend)
      *re = (*backend)->init(&resampler_config, bw_ratio, quality, mask);

   if (!*re)
      return 0;
   return 1;
}
