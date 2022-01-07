
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int32_t ;
typedef int DCAADPCMEncContext ;


 int DCA_ADPCM_COEFFS ;
 int FFABS (int const) ;
 int av_log2 (int ) ;
 int calc_prediction_gain (int,int *,int*,int) ;
 int find_best_filter (int const*,int *,int) ;
 int norm__ (int const,int) ;

int ff_dcaadpcm_subband_analysis(const DCAADPCMEncContext *s, const int32_t *in, int len, int *diff)
{
    int pred_vq, i;
    int32_t input_buffer[16 + DCA_ADPCM_COEFFS];
    int32_t input_buffer2[16 + DCA_ADPCM_COEFFS];

    int32_t max = 0;
    int shift_bits;
    uint64_t pg = 0;

    for (i = 0; i < len + DCA_ADPCM_COEFFS; i++)
        max |= FFABS(in[i]);


    shift_bits = av_log2(max) - 11;

    for (i = 0; i < len + DCA_ADPCM_COEFFS; i++) {
        input_buffer[i] = norm__(in[i], 7);
        input_buffer2[i] = norm__(in[i], shift_bits);
    }

    pred_vq = find_best_filter(s, input_buffer2, len);

    if (pred_vq < 0)
        return -1;

    pg = calc_prediction_gain(pred_vq, input_buffer, diff, len);



    if (pg < 10)
        return -1;

    for (i = 0; i < len; i++)
        diff[i] <<= 7;

    return pred_vq;
}
