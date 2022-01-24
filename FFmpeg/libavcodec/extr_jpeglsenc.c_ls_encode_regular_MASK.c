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
struct TYPE_4__ {int* N; int* A; int* B; int range; int /*<<< orphan*/  qbpp; int /*<<< orphan*/  limit; int /*<<< orphan*/  near; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ JLSState ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(JLSState *state, PutBitContext *pb, int Q,
                                     int err)
{
    int k;
    int val;
    int map;

    for (k = 0; (state->N[Q] << k) < state->A[Q]; k++)
        ;

    map = !state->near && !k && (2 * state->B[Q] <= -state->N[Q]);

    if (err < 0)
        err += state->range;
    if (err >= ((state->range + 1) >> 1)) {
        err -= state->range;
        val  = 2 * FUNC0(err) - 1 - map;
    } else
        val = 2 * err + map;

    FUNC2(pb, val, k, state->limit, state->qbpp);

    FUNC1(state, Q, err);
}