#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_9__ {int order; int* state; void* shift; } ;
struct TYPE_8__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/ ** filter_changed; TYPE_2__* substream; } ;
struct TYPE_7__ {TYPE_1__* channel_params; } ;
struct TYPE_6__ {int** coeff; TYPE_4__* filter_params; } ;
typedef  TYPE_2__ SubStream ;
typedef  TYPE_3__ MLPDecodeContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ FilterParams ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 unsigned int FIR ; 
 int MAX_FIR_ORDER ; 
 int MAX_IIR_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(MLPDecodeContext *m, GetBitContext *gbp,
                              unsigned int substr, unsigned int channel,
                              unsigned int filter)
{
    SubStream *s = &m->substream[substr];
    FilterParams *fp = &s->channel_params[channel].filter_params[filter];
    const int max_order = filter ? MAX_IIR_ORDER : MAX_FIR_ORDER;
    const char fchar = filter ? 'I' : 'F';
    int i, order;

    // Filter is 0 for FIR, 1 for IIR.
    FUNC0(filter < 2);

    if (m->filter_changed[channel][filter]++ > 1) {
        FUNC1(m->avctx, AV_LOG_ERROR, "Filters may change only once per access unit.\n");
        return AVERROR_INVALIDDATA;
    }

    order = FUNC2(gbp, 4);
    if (order > max_order) {
        FUNC1(m->avctx, AV_LOG_ERROR,
               "%cIR filter order %d is greater than maximum %d.\n",
               fchar, order, max_order);
        return AVERROR_INVALIDDATA;
    }
    fp->order = order;

    if (order > 0) {
        int32_t *fcoeff = s->channel_params[channel].coeff[filter];
        int coeff_bits, coeff_shift;

        fp->shift = FUNC2(gbp, 4);

        coeff_bits  = FUNC2(gbp, 5);
        coeff_shift = FUNC2(gbp, 3);
        if (coeff_bits < 1 || coeff_bits > 16) {
            FUNC1(m->avctx, AV_LOG_ERROR,
                   "%cIR filter coeff_bits must be between 1 and 16.\n",
                   fchar);
            return AVERROR_INVALIDDATA;
        }
        if (coeff_bits + coeff_shift > 16) {
            FUNC1(m->avctx, AV_LOG_ERROR,
                   "Sum of coeff_bits and coeff_shift for %cIR filter must be 16 or less.\n",
                   fchar);
            return AVERROR_INVALIDDATA;
        }

        for (i = 0; i < order; i++)
            fcoeff[i] = FUNC4(gbp, coeff_bits) * (1 << coeff_shift);

        if (FUNC3(gbp)) {
            int state_bits, state_shift;

            if (filter == FIR) {
                FUNC1(m->avctx, AV_LOG_ERROR,
                       "FIR filter has state data specified.\n");
                return AVERROR_INVALIDDATA;
            }

            state_bits  = FUNC2(gbp, 4);
            state_shift = FUNC2(gbp, 4);

            /* TODO: Check validity of state data. */

            for (i = 0; i < order; i++)
                fp->state[i] = state_bits ? FUNC4(gbp, state_bits) * (1 << state_shift) : 0;
        }
    }

    return 0;
}