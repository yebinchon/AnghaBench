#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {double delta; scalar_t__ value; } ;
typedef  TYPE_1__ int32_t ;
struct TYPE_20__ {int log_limit; int nterms; int best_bits; TYPE_1__* dps; } ;
typedef  TYPE_2__ WavPackExtraInfo ;
struct TYPE_21__ {int flags; int num_terms; int block_samples; int extra_flags; double delta_decay; TYPE_1__* decorr_passes; TYPE_1__*** sampleptrs; } ;
typedef  TYPE_3__ WavPackEncodeContext ;

/* Variables and functions */
 int EXTRA_ADJUST_DELTAS ; 
 int EXTRA_BRANCHES ; 
 int EXTRA_SORT_FIRST ; 
 int EXTRA_SORT_LAST ; 
 int EXTRA_TRY_DELTAS ; 
 int FUNC0 (int,int) ; 
 int MAG_LSB ; 
 int MAG_MASK ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (double) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(WavPackEncodeContext *s, int32_t *samples, int do_samples)
{
    WavPackExtraInfo info;
    int i;

    info.log_limit = (((s->flags & MAG_MASK) >> MAG_LSB) + 4) * 256;
    info.log_limit = FUNC0(6912, info.log_limit);

    info.nterms = s->num_terms;

    if (FUNC1(s, s->num_terms))
        return;

    FUNC6(info.dps, s->decorr_passes, sizeof(info.dps));
    FUNC6(s->sampleptrs[0][0], samples, s->block_samples * 4);

    for (i = 0; i < info.nterms && info.dps[i].value; i++)
        FUNC2(s->sampleptrs[i][0], s->sampleptrs[i + 1][0],
                    s->block_samples, info.dps + i, 1);

    info.best_bits = FUNC5(s->sampleptrs[info.nterms][0], s->block_samples, 0) * 1;
    FUNC6(s->sampleptrs[info.nterms + 1][0], s->sampleptrs[i][0], s->block_samples * 4);

    if (s->extra_flags & EXTRA_BRANCHES)
        FUNC7(s, &info, 0, (int) FUNC4(s->delta_decay + 0.5),
                     FUNC5(s->sampleptrs[0][0], s->block_samples, 0));

    if (s->extra_flags & EXTRA_SORT_FIRST)
        FUNC8(s, &info);

    if (s->extra_flags & EXTRA_TRY_DELTAS) {
        FUNC3(s, &info);

        if ((s->extra_flags & EXTRA_ADJUST_DELTAS) && s->decorr_passes[0].value)
            s->delta_decay = (float)((s->delta_decay * 2.0 + s->decorr_passes[0].delta) / 3.0);
        else
            s->delta_decay = 2.0;
    }

    if (s->extra_flags & EXTRA_SORT_LAST)
        FUNC8(s, &info);

    if (do_samples)
        FUNC6(samples, s->sampleptrs[info.nterms + 1][0], s->block_samples * 4);

    for (i = 0; i < info.nterms; i++)
        if (!s->decorr_passes[i].value)
            break;

    s->num_terms = i;
}