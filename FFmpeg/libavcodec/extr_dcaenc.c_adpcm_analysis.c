
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int fullband_channels; int** prediction_mode; int ** diff_peak_cb; scalar_t__ consumed_adpcm_bits; int adpcm_ctx; int ** subband; } ;
typedef TYPE_1__ DCAEncContext ;


 int DCA_ADPCM_COEFFS ;
 int SUBBAND_SAMPLES ;
 int ff_dcaadpcm_subband_analysis (int *,int *,int,int *) ;
 int find_peak (TYPE_1__*,int *,int) ;

__attribute__((used)) static void adpcm_analysis(DCAEncContext *c)
{
    int ch, band;
    int pred_vq_id;
    int32_t *samples;
    int32_t estimated_diff[SUBBAND_SAMPLES];

    c->consumed_adpcm_bits = 0;
    for (ch = 0; ch < c->fullband_channels; ch++) {
        for (band = 0; band < 32; band++) {
            samples = c->subband[ch][band] - DCA_ADPCM_COEFFS;
            pred_vq_id = ff_dcaadpcm_subband_analysis(&c->adpcm_ctx, samples,
                                                      SUBBAND_SAMPLES, estimated_diff);
            if (pred_vq_id >= 0) {
                c->prediction_mode[ch][band] = pred_vq_id;
                c->consumed_adpcm_bits += 12;
                c->diff_peak_cb[ch][band] = find_peak(c, estimated_diff, 16);
            } else {
                c->prediction_mode[ch][band] = -1;
            }
        }
    }
}
