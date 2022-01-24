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
struct TYPE_4__ {int* N; int* A; int* B; int /*<<< orphan*/  near; int /*<<< orphan*/  qbpp; int /*<<< orphan*/  limit; } ;
typedef  TYPE_1__ JLSState ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(GetBitContext *gb, JLSState *state, int Q)
{
    int k, ret;

    for (k = 0; (state->N[Q] << k) < state->A[Q]; k++)
        ;

#ifdef JLS_BROKEN
    if (!show_bits_long(gb, 32))
        return -1;
#endif
    ret = FUNC1(gb, k, state->limit, state->qbpp);

    /* decode mapped error */
    if (ret & 1)
        ret = -((ret + 1) >> 1);
    else
        ret >>= 1;

    /* for NEAR=0, k=0 and 2*B[Q] <= - N[Q] mapping is reversed */
    if (!state->near && !k && (2 * state->B[Q] <= -state->N[Q]))
        ret = -(ret + 1);

    ret = FUNC0(state, Q, ret);

    return ret;
}