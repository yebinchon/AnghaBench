#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct frame_type_desc {scalar_t__ fcb_type; int log_n_blocks; int dbl_pulses; scalar_t__ acb_type; } ;
typedef  int idx_sh16 ;
struct TYPE_9__ {float silence_gain; float* gain_pred_err; int last_pitch_val; int pitch_diff_sh16; int /*<<< orphan*/  frame_cntr; } ;
typedef  TYPE_1__ WMAVoiceContext ;
struct TYPE_10__ {int pitch_lag; double pitch_fac; int no_repeat_mask; size_t n; int* x; float* y; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AMRFixed ;

/* Variables and functions */
 scalar_t__ ACB_TYPE_ASYMMETRIC ; 
 scalar_t__ FCB_TYPE_AW_PULSES ; 
 int MAX_FRAMESIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 float FUNC2 (double,double,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 double FUNC4 (float*,float const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 float FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (float*,TYPE_2__*,double,int) ; 
 int /*<<< orphan*/  FUNC10 (float*,float*,float*,float,float,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC14 (float*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 float* wmavoice_gain_codebook_acb ; 
 double* wmavoice_gain_codebook_fcb ; 
 int /*<<< orphan*/  wmavoice_ipol1_coeffs ; 
 int /*<<< orphan*/  wmavoice_ipol2_coeffs ; 
 float* wmavoice_std_codebook ; 

__attribute__((used)) static void FUNC17(WMAVoiceContext *s, GetBitContext *gb,
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

    FUNC0(size <= MAX_FRAMESIZE / 2);
    FUNC14(pulses, 0, sizeof(*pulses) * size);

    fcb.pitch_lag      = block_pitch_sh2 >> 2;
    fcb.pitch_fac      = 1.0;
    fcb.no_repeat_mask = 0;
    fcb.n              = 0;

    /* For the other frame types, this is where we apply the innovation
     * (fixed) codebook pulses of the speech signal. */
    if (frame_desc->fcb_type == FCB_TYPE_AW_PULSES) {
        FUNC5(s, gb, block_idx, &fcb);
        if (FUNC6(s, gb, block_idx, &fcb)) {
            /* Conceal the block with silence and return.
             * Skip the correct amount of bits to read the next
             * block from the correct offset. */
            int r_idx = FUNC15(s->frame_cntr, block_idx, size);

            for (n = 0; n < size; n++)
                excitation[n] =
                    wmavoice_std_codebook[r_idx + n] * s->silence_gain;
            FUNC16(gb, 7 + 1);
            return;
        }
    } else /* FCB_TYPE_EXC_PULSES */ {
        int offset_nbits = 5 - frame_desc->log_n_blocks;

        fcb.no_repeat_mask = -1;
        /* similar to ff_decode_10_pulses_35bits(), but with single pulses
         * (instead of double) for a subset of pulses */
        for (n = 0; n < 5; n++) {
            float sign;
            int pos1, pos2;

            sign           = FUNC12(gb) ? 1.0 : -1.0;
            pos1           = FUNC11(gb, offset_nbits);
            fcb.x[fcb.n]   = n + 5 * pos1;
            fcb.y[fcb.n++] = sign;
            if (n < frame_desc->dbl_pulses) {
                pos2           = FUNC11(gb, offset_nbits);
                fcb.x[fcb.n]   = n + 5 * pos2;
                fcb.y[fcb.n++] = (pos1 < pos2) ? -sign : sign;
            }
        }
    }
    FUNC9(pulses, &fcb, 1.0, size);

    /* Calculate gain for adaptive & fixed codebook signal.
     * see ff_amr_set_fixed_gain(). */
    idx = FUNC11(gb, 7);
    fcb_gain = FUNC7(FUNC4(s->gain_pred_err,
                                                 gain_coeff, 6) -
                    5.2409161640 + wmavoice_gain_codebook_fcb[idx]);
    acb_gain = wmavoice_gain_codebook_acb[idx];
    pred_err = FUNC2(wmavoice_gain_codebook_fcb[idx],
                        -2.9957322736 /* log(0.05) */,
                         1.6094379124 /* log(5.0)  */);

    gain_weight = 8 >> frame_desc->log_n_blocks;
    FUNC13(&s->gain_pred_err[gain_weight], s->gain_pred_err,
            sizeof(*s->gain_pred_err) * (6 - gain_weight));
    for (n = 0; n < gain_weight; n++)
        s->gain_pred_err[n] = pred_err;

    /* Calculation of adaptive codebook */
    if (frame_desc->acb_type == ACB_TYPE_ASYMMETRIC) {
        int len;
        for (n = 0; n < size; n += len) {
            int next_idx_sh16;
            int abs_idx    = block_idx * size + n;
            int pitch_sh16 = (s->last_pitch_val << 16) +
                             s->pitch_diff_sh16 * abs_idx;
            int pitch      = (pitch_sh16 + 0x6FFF) >> 16;
            int idx_sh16   = ((pitch << 16) - pitch_sh16) * 8 + 0x58000;
            idx            = idx_sh16 >> 16;
            if (s->pitch_diff_sh16) {
                if (s->pitch_diff_sh16 > 0) {
                    next_idx_sh16 = (idx_sh16) &~ 0xFFFF;
                } else
                    next_idx_sh16 = (idx_sh16 + 0x10000) &~ 0xFFFF;
                len = FUNC1((idx_sh16 - next_idx_sh16) / s->pitch_diff_sh16 / 8,
                              1, size - n);
            } else
                len = size;

            FUNC8(&excitation[n], &excitation[n - pitch],
                                  wmavoice_ipol1_coeffs, 17,
                                  idx, 9, len);
        }
    } else /* ACB_TYPE_HAMMING */ {
        int block_pitch = block_pitch_sh2 >> 2;
        idx             = block_pitch_sh2 & 3;
        if (idx) {
            FUNC8(excitation, &excitation[-block_pitch],
                                  wmavoice_ipol2_coeffs, 4,
                                  idx, 8, size);
        } else
            FUNC3((uint8_t *) excitation, sizeof(float) * block_pitch,
                              sizeof(float) * size);
    }

    /* Interpolate ACB/FCB and use as excitation signal */
    FUNC10(excitation, excitation, pulses,
                            acb_gain, fcb_gain, size);
}