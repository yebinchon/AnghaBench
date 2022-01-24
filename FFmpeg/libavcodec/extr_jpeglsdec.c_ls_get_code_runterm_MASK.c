#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* A; int* N; int limit; int* B; int twonear; int /*<<< orphan*/  qbpp; } ;
typedef  TYPE_1__ JLSState ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC4(GetBitContext *gb, JLSState *state,
                                      int RItype, int limit_add)
{
    int k, ret, temp, map;
    int Q = 365 + RItype;

    temp = state->A[Q];
    if (RItype)
        temp += state->N[Q] >> 1;

    for (k = 0; (state->N[Q] << k) < temp; k++)
        ;

#ifdef JLS_BROKEN
    if (!show_bits_long(gb, 32))
        return -1;
#endif
    ret = FUNC2(gb, k, state->limit - limit_add - 1,
                               state->qbpp);

    /* decode mapped error */
    map = 0;
    if (!k && (RItype || ret) && (2 * state->B[Q] < state->N[Q]))
        map = 1;
    ret += RItype + map;

    if (ret & 1) {
        ret = map - ((ret + 1) >> 1);
        state->B[Q]++;
    } else {
        ret = ret >> 1;
    }

    if(FUNC0(ret) > 0xFFFF)
        return -0x10000;
    /* update state */
    state->A[Q] += FUNC0(ret) - RItype;
    ret         *= state->twonear;
    FUNC1(state, Q);

    return ret;
}