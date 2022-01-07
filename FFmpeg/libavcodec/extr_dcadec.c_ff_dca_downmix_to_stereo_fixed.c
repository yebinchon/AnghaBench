
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int (* dmix_add ) (int *,int *,int,int) ;int (* dmix_scale ) (int *,int,int) ;} ;
typedef TYPE_1__ DCADSPContext ;


 int DCA_HAS_STEREO (int) ;
 size_t DCA_SPEAKER_L ;
 int DCA_SPEAKER_MASK_C ;
 size_t DCA_SPEAKER_R ;
 int av_assert0 (int ) ;
 int av_log2 (int) ;
 int av_popcount (int) ;
 int stub1 (int *,int,int) ;
 int stub2 (int *,int,int) ;
 int stub3 (int *,int *,int,int) ;
 int stub4 (int *,int *,int,int) ;

void ff_dca_downmix_to_stereo_fixed(DCADSPContext *dcadsp, int32_t **samples,
                                    int *coeff_l, int nsamples, int ch_mask)
{
    int pos, spkr, max_spkr = av_log2(ch_mask);
    int *coeff_r = coeff_l + av_popcount(ch_mask);

    av_assert0(DCA_HAS_STEREO(ch_mask));


    pos = (ch_mask & DCA_SPEAKER_MASK_C);
    dcadsp->dmix_scale(samples[DCA_SPEAKER_L], coeff_l[pos ], nsamples);
    dcadsp->dmix_scale(samples[DCA_SPEAKER_R], coeff_r[pos + 1], nsamples);


    for (spkr = 0; spkr <= max_spkr; spkr++) {
        if (!(ch_mask & (1U << spkr)))
            continue;

        if (*coeff_l && spkr != DCA_SPEAKER_L)
            dcadsp->dmix_add(samples[DCA_SPEAKER_L], samples[spkr],
                             *coeff_l, nsamples);

        if (*coeff_r && spkr != DCA_SPEAKER_R)
            dcadsp->dmix_add(samples[DCA_SPEAKER_R], samples[spkr],
                             *coeff_r, nsamples);

        coeff_l++;
        coeff_r++;
    }
}
