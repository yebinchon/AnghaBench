
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resampler_config {int dummy; } ;
typedef int resampler_simd_mask_t ;
typedef enum resampler_quality { ____Placeholder_resampler_quality } resampler_quality ;



__attribute__((used)) static void *resampler_null_init(const struct resampler_config *config,
      double bandwidth_mod,
      enum resampler_quality quality,
      resampler_simd_mask_t mask)
{
   return (void*)0;
}
