#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_3__ {unsigned int nwrap; unsigned int* coeffs; unsigned int** decoded; int lpcqoffset; int blocksize; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ ShortenContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int**) ; 
 int FN_QLPC ; 
 int /*<<< orphan*/  LPCQSIZE ; 
 int LPCQUANT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int** fixed_coeffs ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(ShortenContext *s, int command, int channel,
                               int residual_size, int32_t coffset)
{
    int pred_order, sum, qshift, init_sum, i, j;
    const int *coeffs;

    if (command == FN_QLPC) {
        /* read/validate prediction order */
        pred_order = FUNC4(&s->gb, LPCQSIZE);
        if ((unsigned)pred_order > s->nwrap) {
            FUNC2(s->avctx, AV_LOG_ERROR, "invalid pred_order %d\n",
                   pred_order);
            return FUNC0(EINVAL);
        }
        /* read LPC coefficients */
        for (i = 0; i < pred_order; i++)
            s->coeffs[i] = FUNC3(&s->gb, LPCQUANT);
        coeffs = s->coeffs;

        qshift = LPCQUANT;
    } else {
        /* fixed LPC coeffs */
        pred_order = command;
        if (pred_order >= FUNC1(fixed_coeffs)) {
            FUNC2(s->avctx, AV_LOG_ERROR, "invalid pred_order %d\n",
                   pred_order);
            return AVERROR_INVALIDDATA;
        }
        coeffs     = fixed_coeffs[pred_order];
        qshift     = 0;
    }

    /* subtract offset from previous samples to use in prediction */
    if (command == FN_QLPC && coffset)
        for (i = -pred_order; i < 0; i++)
            s->decoded[channel][i] -= (unsigned)coffset;

    /* decode residual and do LPC prediction */
    init_sum = pred_order ? (command == FN_QLPC ? s->lpcqoffset : 0) : coffset;
    for (i = 0; i < s->blocksize; i++) {
        sum = init_sum;
        for (j = 0; j < pred_order; j++)
            sum += coeffs[j] * (unsigned)s->decoded[channel][i - j - 1];
        s->decoded[channel][i] = FUNC3(&s->gb, residual_size) +
                                 (unsigned)(sum >> qshift);
    }

    /* add offset to current samples */
    if (command == FN_QLPC && coffset)
        for (i = 0; i < s->blocksize; i++)
            s->decoded[channel][i] += (unsigned)coffset;

    return 0;
}