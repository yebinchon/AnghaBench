
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int64_t ;
typedef int int32_t ;


 int clip23 (int ) ;
 int norm23 (int) ;

__attribute__((used)) static void lfe_fir_fixed_c(int32_t *pcm_samples, int32_t *lfe_samples,
                            const int32_t *filter_coeff, ptrdiff_t npcmblocks)
{

    int nlfesamples = npcmblocks >> 1;
    int i, j, k;

    for (i = 0; i < nlfesamples; i++) {

        for (j = 0; j < 32; j++) {
            int64_t a = 0;
            int64_t b = 0;

            for (k = 0; k < 8; k++) {
                a += (int64_t)filter_coeff[ j * 8 + k] * lfe_samples[-k];
                b += (int64_t)filter_coeff[255 - j * 8 - k] * lfe_samples[-k];
            }

            pcm_samples[ j] = clip23(norm23(a));
            pcm_samples[32 + j] = clip23(norm23(b));
        }

        lfe_samples++;
        pcm_samples += 64;
    }
}
