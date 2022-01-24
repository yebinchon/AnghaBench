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
struct TYPE_4__ {int* A; int* N; int* B; int limit; int /*<<< orphan*/  qbpp; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ JLSState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(JLSState *state, PutBitContext *pb,
                                     int RItype, int err, int limit_add)
{
    int k;
    int val, map;
    int Q = 365 + RItype;
    int temp;

    temp = state->A[Q];
    if (RItype)
        temp += state->N[Q] >> 1;
    for (k = 0; (state->N[Q] << k) < temp; k++)
        ;
    map = 0;
    if (!k && err && (2 * state->B[Q] < state->N[Q]))
        map = 1;

    if (err < 0)
        val = -(2 * err) - 1 - RItype + map;
    else
        val = 2 * err - RItype - map;
    FUNC1(pb, val, k, state->limit - limit_add - 1, state->qbpp);

    if (err < 0)
        state->B[Q]++;
    state->A[Q] += (val + 1 - RItype) >> 1;

    FUNC0(state, Q);
}