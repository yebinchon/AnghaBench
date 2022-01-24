#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int near; size_t* run_index; int* C; int maxval; int range; int twonear; } ;
struct TYPE_8__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MJpegDecodeContext ;
typedef  TYPE_2__ JLSState ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int) ; 
 int FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int* ff_log2_run ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int,int) ; 
 int FUNC12 (int,int,int) ; 

__attribute__((used)) static inline int FUNC13(JLSState *state, MJpegDecodeContext *s,
                                  void *last, void *dst, int last2, int w,
                                  int stride, int comp, int bits)
{
    int i, x = 0;
    int Ra, Rb, Rc, Rd;
    int D0, D1, D2;

    while (x < w) {
        int err, pred;

        if (FUNC8(&s->gb) <= 0)
            return AVERROR_INVALIDDATA;

        /* compute gradients */
        Ra = x ? FUNC1(dst, x - stride) : FUNC1(last, x);
        Rb = FUNC1(last, x);
        Rc = x ? FUNC1(last, x - stride) : last2;
        Rd = (x >= w - stride) ? FUNC1(last, x) : FUNC1(last, x + stride);
        D0 = Rd - Rb;
        D1 = Rb - Rc;
        D2 = Rc - Ra;
        /* run mode */
        if ((FUNC0(D0) <= state->near) &&
            (FUNC0(D1) <= state->near) &&
            (FUNC0(D2) <= state->near)) {
            int r;
            int RItype;

            /* decode full runs while available */
            while (FUNC7(&s->gb)) {
                int r;
                r = 1 << ff_log2_run[state->run_index[comp]];
                if (x + r * stride > w)
                    r = (w - x) / stride;
                for (i = 0; i < r; i++) {
                    FUNC2(dst, x, Ra);
                    x += stride;
                }
                /* if EOL reached, we stop decoding */
                if (r != 1 << ff_log2_run[state->run_index[comp]])
                    return 0;
                if (state->run_index[comp] < 31)
                    state->run_index[comp]++;
                if (x + stride > w)
                    return 0;
            }
            /* decode aborted run */
            r = ff_log2_run[state->run_index[comp]];
            if (r)
                r = FUNC9(&s->gb, r);
            if (x + r * stride > w) {
                r = (w - x) / stride;
            }
            for (i = 0; i < r; i++) {
                FUNC2(dst, x, Ra);
                x += stride;
            }

            if (x >= w) {
                FUNC5(NULL, AV_LOG_ERROR, "run overflow\n");
                FUNC3(x <= w);
                return AVERROR_INVALIDDATA;
            }

            /* decode run termination value */
            Rb     = FUNC1(last, x);
            RItype = (FUNC0(Ra - Rb) <= state->near) ? 1 : 0;
            err    = FUNC11(&s->gb, state, RItype,
                                         ff_log2_run[state->run_index[comp]]);
            if (state->run_index[comp])
                state->run_index[comp]--;

            if (state->near && RItype) {
                pred = Ra + err;
            } else {
                if (Rb < Ra)
                    pred = Rb - err;
                else
                    pred = Rb + err;
            }
        } else { /* regular mode */
            int context, sign;

            context = FUNC6(state, D0) * 81 +
                      FUNC6(state, D1) *  9 +
                      FUNC6(state, D2);
            pred    = FUNC12(Ra, Ra + Rb - Rc, Rb);

            if (context < 0) {
                context = -context;
                sign    = 1;
            } else {
                sign = 0;
            }

            if (sign) {
                pred = FUNC4(pred - state->C[context], 0, state->maxval);
                err  = -FUNC10(&s->gb, state, context);
            } else {
                pred = FUNC4(pred + state->C[context], 0, state->maxval);
                err  = FUNC10(&s->gb, state, context);
            }

            /* we have to do something more for near-lossless coding */
            pred += err;
        }
        if (state->near) {
            if (pred < -state->near)
                pred += state->range * state->twonear;
            else if (pred > state->maxval + state->near)
                pred -= state->range * state->twonear;
            pred = FUNC4(pred, 0, state->maxval);
        }

        pred &= state->maxval;
        FUNC2(dst, x, pred);
        x += stride;
    }

    return 0;
}