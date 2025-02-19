
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct frame_type_desc {scalar_t__ fcb_type; int log_n_blocks; int dbl_pulses; scalar_t__ acb_type; } ;
typedef int idx_sh16 ;
struct TYPE_9__ {float silence_gain; float* gain_pred_err; int last_pitch_val; int pitch_diff_sh16; int frame_cntr; } ;
typedef TYPE_1__ WMAVoiceContext ;
struct TYPE_10__ {int pitch_lag; double pitch_fac; int no_repeat_mask; size_t n; int* x; float* y; } ;
typedef int GetBitContext ;
typedef TYPE_2__ AMRFixed ;


 scalar_t__ ACB_TYPE_ASYMMETRIC ;
 scalar_t__ FCB_TYPE_AW_PULSES ;
 int MAX_FRAMESIZE ;
 int av_assert0 (int) ;
 int av_clip (int,int,int) ;
 float av_clipf (double,double,double) ;
 int av_memcpy_backptr (int *,int,int) ;
 double avpriv_scalarproduct_float_c (float*,float const*,int) ;
 int aw_pulse_set1 (TYPE_1__*,int *,int,TYPE_2__*) ;
 scalar_t__ aw_pulse_set2 (TYPE_1__*,int *,int,TYPE_2__*) ;
 float expf (double) ;
 int ff_acelp_interpolatef (float*,float*,int ,int,int,int,int) ;
 int ff_set_fixed_vector (float*,TYPE_2__*,double,int) ;
 int ff_weighted_vector_sumf (float*,float*,float*,float,float,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int memmove (float*,float*,int) ;
 int memset (float*,int ,int) ;
 int pRNG (int ,int,int) ;
 int skip_bits (int *,int) ;
 float* wmavoice_gain_codebook_acb ;
 double* wmavoice_gain_codebook_fcb ;
 int wmavoice_ipol1_coeffs ;
 int wmavoice_ipol2_coeffs ;
 float* wmavoice_std_codebook ;

__attribute__((used)) static void synth_block_fcb_acb(WMAVoiceContext *s, GetBitContext *gb,
                                int block_idx, int size,
                                int block_pitch_sh2,
                                const struct frame_type_desc *frame_desc,
                                float *excitation)
{
    static const float gain_coeff[6] = {
        0.8169, -0.06545, 0.1726, 0.0185, -0.0359, 0.0458
    };
    float pulses[MAX_FRAMESIZE / 2], pred_err, acb_gain, fcb_gain;
    int n, idx, gain_weight;
    AMRFixed fcb;

    av_assert0(size <= MAX_FRAMESIZE / 2);
    memset(pulses, 0, sizeof(*pulses) * size);

    fcb.pitch_lag = block_pitch_sh2 >> 2;
    fcb.pitch_fac = 1.0;
    fcb.no_repeat_mask = 0;
    fcb.n = 0;



    if (frame_desc->fcb_type == FCB_TYPE_AW_PULSES) {
        aw_pulse_set1(s, gb, block_idx, &fcb);
        if (aw_pulse_set2(s, gb, block_idx, &fcb)) {



            int r_idx = pRNG(s->frame_cntr, block_idx, size);

            for (n = 0; n < size; n++)
                excitation[n] =
                    wmavoice_std_codebook[r_idx + n] * s->silence_gain;
            skip_bits(gb, 7 + 1);
            return;
        }
    } else {
        int offset_nbits = 5 - frame_desc->log_n_blocks;

        fcb.no_repeat_mask = -1;


        for (n = 0; n < 5; n++) {
            float sign;
            int pos1, pos2;

            sign = get_bits1(gb) ? 1.0 : -1.0;
            pos1 = get_bits(gb, offset_nbits);
            fcb.x[fcb.n] = n + 5 * pos1;
            fcb.y[fcb.n++] = sign;
            if (n < frame_desc->dbl_pulses) {
                pos2 = get_bits(gb, offset_nbits);
                fcb.x[fcb.n] = n + 5 * pos2;
                fcb.y[fcb.n++] = (pos1 < pos2) ? -sign : sign;
            }
        }
    }
    ff_set_fixed_vector(pulses, &fcb, 1.0, size);



    idx = get_bits(gb, 7);
    fcb_gain = expf(avpriv_scalarproduct_float_c(s->gain_pred_err,
                                                 gain_coeff, 6) -
                    5.2409161640 + wmavoice_gain_codebook_fcb[idx]);
    acb_gain = wmavoice_gain_codebook_acb[idx];
    pred_err = av_clipf(wmavoice_gain_codebook_fcb[idx],
                        -2.9957322736 ,
                         1.6094379124 );

    gain_weight = 8 >> frame_desc->log_n_blocks;
    memmove(&s->gain_pred_err[gain_weight], s->gain_pred_err,
            sizeof(*s->gain_pred_err) * (6 - gain_weight));
    for (n = 0; n < gain_weight; n++)
        s->gain_pred_err[n] = pred_err;


    if (frame_desc->acb_type == ACB_TYPE_ASYMMETRIC) {
        int len;
        for (n = 0; n < size; n += len) {
            int next_idx_sh16;
            int abs_idx = block_idx * size + n;
            int pitch_sh16 = (s->last_pitch_val << 16) +
                             s->pitch_diff_sh16 * abs_idx;
            int pitch = (pitch_sh16 + 0x6FFF) >> 16;
            int idx_sh16 = ((pitch << 16) - pitch_sh16) * 8 + 0x58000;
            idx = idx_sh16 >> 16;
            if (s->pitch_diff_sh16) {
                if (s->pitch_diff_sh16 > 0) {
                    next_idx_sh16 = (idx_sh16) &~ 0xFFFF;
                } else
                    next_idx_sh16 = (idx_sh16 + 0x10000) &~ 0xFFFF;
                len = av_clip((idx_sh16 - next_idx_sh16) / s->pitch_diff_sh16 / 8,
                              1, size - n);
            } else
                len = size;

            ff_acelp_interpolatef(&excitation[n], &excitation[n - pitch],
                                  wmavoice_ipol1_coeffs, 17,
                                  idx, 9, len);
        }
    } else {
        int block_pitch = block_pitch_sh2 >> 2;
        idx = block_pitch_sh2 & 3;
        if (idx) {
            ff_acelp_interpolatef(excitation, &excitation[-block_pitch],
                                  wmavoice_ipol2_coeffs, 4,
                                  idx, 8, size);
        } else
            av_memcpy_backptr((uint8_t *) excitation, sizeof(float) * block_pitch,
                              sizeof(float) * size);
    }


    ff_weighted_vector_sumf(excitation, excitation, pulses,
                            acb_gain, fcb_gain, size);
}
