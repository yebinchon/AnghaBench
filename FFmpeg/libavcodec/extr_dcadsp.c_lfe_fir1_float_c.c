
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;


 int lfe_fir_float_c (float*,int *,float const*,int ,int) ;

__attribute__((used)) static void lfe_fir1_float_c(float *pcm_samples, int32_t *lfe_samples,
                             const float *filter_coeff, ptrdiff_t npcmblocks)
{
    lfe_fir_float_c(pcm_samples, lfe_samples, filter_coeff, npcmblocks, 1);
}
