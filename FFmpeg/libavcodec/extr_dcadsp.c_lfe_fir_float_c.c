
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef float const int32_t ;



__attribute__((used)) static void lfe_fir_float_c(float *pcm_samples, int32_t *lfe_samples,
                            const float *filter_coeff, ptrdiff_t npcmblocks,
                            int dec_select)
{

    int factor = 64 << dec_select;
    int ncoeffs = 8 >> dec_select;
    int nlfesamples = npcmblocks >> (dec_select + 1);
    int i, j, k;

    for (i = 0; i < nlfesamples; i++) {

        for (j = 0; j < factor / 2; j++) {
            float a = 0;
            float b = 0;

            for (k = 0; k < ncoeffs; k++) {
                a += filter_coeff[ j * ncoeffs + k] * lfe_samples[-k];
                b += filter_coeff[255 - j * ncoeffs - k] * lfe_samples[-k];
            }

            pcm_samples[ j] = a;
            pcm_samples[factor / 2 + j] = b;
        }

        lfe_samples++;
        pcm_samples += factor;
    }
}
