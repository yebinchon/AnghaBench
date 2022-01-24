#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int near; int twonear; int range; size_t* run_index; int* C; int /*<<< orphan*/  maxval; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ JLSState ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * ff_log2_run ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int,int) ; 

__attribute__((used)) static inline void FUNC9(JLSState *state, PutBitContext *pb,
                                  void *last, void *cur, int last2, int w,
                                  int stride, int comp, int bits)
{
    int x = 0;
    int Ra, Rb, Rc, Rd;
    int D0, D1, D2;

    while (x < w) {
        int err, pred, sign;

        /* compute gradients */
        Ra = x ? FUNC1(cur, x - stride) : FUNC1(last, x);
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
            int RUNval, RItype, run;

            run    = 0;
            RUNval = Ra;
            while (x < w && (FUNC0(FUNC1(cur, x) - RUNval) <= state->near)) {
                run++;
                FUNC2(cur, x, Ra);
                x += stride;
            }
            FUNC6(state, pb, run, comp, x < w);
            if (x >= w)
                return;
            Rb     = FUNC1(last, x);
            RItype = FUNC0(Ra - Rb) <= state->near;
            pred   = RItype ? Ra : Rb;
            err    = FUNC1(cur, x) - pred;

            if (!RItype && Ra > Rb)
                err = -err;

            if (state->near) {
                if (err > 0)
                    err =  (state->near + err) / state->twonear;
                else
                    err = -(state->near - err) / state->twonear;

                if (RItype || (Rb >= Ra))
                    Ra = FUNC3(pred + err * state->twonear, 0, state->maxval);
                else
                    Ra = FUNC3(pred - err * state->twonear, 0, state->maxval);
                FUNC2(cur, x, Ra);
            }
            if (err < 0)
                err += state->range;
            if (err >= (state->range + 1) >> 1)
                err -= state->range;

            FUNC7(state, pb, RItype, err,
                              ff_log2_run[state->run_index[comp]]);

            if (state->run_index[comp] > 0)
                state->run_index[comp]--;
        } else { /* regular mode */
            int context;

            context = FUNC4(state, D0) * 81 +
                      FUNC4(state, D1) *  9 +
                      FUNC4(state, D2);
            pred    = FUNC8(Ra, Ra + Rb - Rc, Rb);

            if (context < 0) {
                context = -context;
                sign    = 1;
                pred    = FUNC3(pred - state->C[context], 0, state->maxval);
                err     = pred - FUNC1(cur, x);
            } else {
                sign = 0;
                pred = FUNC3(pred + state->C[context], 0, state->maxval);
                err  = FUNC1(cur, x) - pred;
            }

            if (state->near) {
                if (err > 0)
                    err =  (state->near + err) / state->twonear;
                else
                    err = -(state->near - err) / state->twonear;
                if (!sign)
                    Ra = FUNC3(pred + err * state->twonear, 0, state->maxval);
                else
                    Ra = FUNC3(pred - err * state->twonear, 0, state->maxval);
                FUNC2(cur, x, Ra);
            }

            FUNC5(state, pb, context, err);
        }
        x += stride;
    }
}