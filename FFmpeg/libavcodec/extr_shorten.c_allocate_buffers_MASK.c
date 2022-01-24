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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int channels; int blocksize; int nwrap; scalar_t__* coeffs; scalar_t__** decoded_base; scalar_t__** decoded; int /*<<< orphan*/  nmean; scalar_t__** offset; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ ShortenContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__**,int,int) ; 

__attribute__((used)) static int FUNC3(ShortenContext *s)
{
    int i, chan, err;

    for (chan = 0; chan < s->channels; chan++) {
        if (FUNC0(1, s->nmean) >= UINT_MAX / sizeof(int32_t)) {
            FUNC1(s->avctx, AV_LOG_ERROR, "nmean too large\n");
            return AVERROR_INVALIDDATA;
        }
        if (s->blocksize + (uint64_t)s->nwrap >= UINT_MAX / sizeof(int32_t)) {
            FUNC1(s->avctx, AV_LOG_ERROR,
                   "s->blocksize + s->nwrap too large\n");
            return AVERROR_INVALIDDATA;
        }

        if ((err = FUNC2(&s->offset[chan],
                               sizeof(int32_t),
                               FUNC0(1, s->nmean))) < 0)
            return err;

        if ((err = FUNC2(&s->decoded_base[chan], (s->blocksize + s->nwrap),
                               sizeof(s->decoded_base[0][0]))) < 0)
            return err;
        for (i = 0; i < s->nwrap; i++)
            s->decoded_base[chan][i] = 0;
        s->decoded[chan] = s->decoded_base[chan] + s->nwrap;
    }

    if ((err = FUNC2(&s->coeffs, s->nwrap, sizeof(*s->coeffs))) < 0)
        return err;

    return 0;
}