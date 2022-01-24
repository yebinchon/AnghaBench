#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int int64_t ;
typedef  int int32_t ;
struct TYPE_8__ {unsigned int block_length; int* opt_order; int* quant_cof; int* lpc_cof; int* raw_samples; int* ltp_lag; int* ltp_gain; int* prev_raw_samples; int* raw_other; int* shift_lsbs; scalar_t__* store_prev_samples; scalar_t__ js_blocks; scalar_t__ ra_block; scalar_t__* use_ltp; } ;
struct TYPE_6__ {int max_order; } ;
struct TYPE_7__ {int* lpc_cof_reversed_buffer; TYPE_1__ sconf; } ;
typedef  TYPE_1__ ALSSpecificConfig ;
typedef  TYPE_2__ ALSDecContext ;
typedef  TYPE_3__ ALSBlockData ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 unsigned int FUNC1 (int,unsigned int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int*,int*) ; 

__attribute__((used)) static int FUNC5(ALSDecContext *ctx, ALSBlockData *bd)
{
    ALSSpecificConfig *sconf = &ctx->sconf;
    unsigned int block_length = bd->block_length;
    unsigned int smp = 0;
    unsigned int k;
    int opt_order             = *bd->opt_order;
    int sb;
    int64_t y;
    int32_t *quant_cof        = bd->quant_cof;
    int32_t *lpc_cof          = bd->lpc_cof;
    int32_t *raw_samples      = bd->raw_samples;
    int32_t *raw_samples_end  = bd->raw_samples + bd->block_length;
    int32_t *lpc_cof_reversed = ctx->lpc_cof_reversed_buffer;

    // reverse long-term prediction
    if (*bd->use_ltp) {
        int ltp_smp;

        for (ltp_smp = FUNC0(*bd->ltp_lag - 2, 0); ltp_smp < block_length; ltp_smp++) {
            int center = ltp_smp - *bd->ltp_lag;
            int begin  = FUNC0(0, center - 2);
            int end    = center + 3;
            int tab    = 5 - (end - begin);
            int base;

            y = 1 << 6;

            for (base = begin; base < end; base++, tab++)
                y += (uint64_t)FUNC2(bd->ltp_gain[tab], raw_samples[base]);

            raw_samples[ltp_smp] += y >> 7;
        }
    }

    // reconstruct all samples from residuals
    if (bd->ra_block) {
        for (smp = 0; smp < FUNC1(opt_order, block_length); smp++) {
            y = 1 << 19;

            for (sb = 0; sb < smp; sb++)
                y += (uint64_t)FUNC2(lpc_cof[sb], raw_samples[-(sb + 1)]);

            *raw_samples++ -= y >> 20;
            FUNC4(smp, quant_cof, lpc_cof);
        }
    } else {
        for (k = 0; k < opt_order; k++)
            FUNC4(k, quant_cof, lpc_cof);

        // store previous samples in case that they have to be altered
        if (*bd->store_prev_samples)
            FUNC3(bd->prev_raw_samples, raw_samples - sconf->max_order,
                   sizeof(*bd->prev_raw_samples) * sconf->max_order);

        // reconstruct difference signal for prediction (joint-stereo)
        if (bd->js_blocks && bd->raw_other) {
            uint32_t *left, *right;

            if (bd->raw_other > raw_samples) {  // D = R - L
                left  = raw_samples;
                right = bd->raw_other;
            } else {                                // D = R - L
                left  = bd->raw_other;
                right = raw_samples;
            }

            for (sb = -1; sb >= -sconf->max_order; sb--)
                raw_samples[sb] = right[sb] - left[sb];
        }

        // reconstruct shifted signal
        if (*bd->shift_lsbs)
            for (sb = -1; sb >= -sconf->max_order; sb--)
                raw_samples[sb] >>= *bd->shift_lsbs;
    }

    // reverse linear prediction coefficients for efficiency
    lpc_cof = lpc_cof + opt_order;

    for (sb = 0; sb < opt_order; sb++)
        lpc_cof_reversed[sb] = lpc_cof[-(sb + 1)];

    // reconstruct raw samples
    raw_samples = bd->raw_samples + smp;
    lpc_cof     = lpc_cof_reversed + opt_order;

    for (; raw_samples < raw_samples_end; raw_samples++) {
        y = 1 << 19;

        for (sb = -opt_order; sb < 0; sb++)
            y += (uint64_t)FUNC2(lpc_cof[sb], raw_samples[sb]);

        *raw_samples -= y >> 20;
    }

    raw_samples = bd->raw_samples;

    // restore previous samples in case that they have been altered
    if (*bd->store_prev_samples)
        FUNC3(raw_samples - sconf->max_order, bd->prev_raw_samples,
               sizeof(*raw_samples) * sconf->max_order);

    return 0;
}