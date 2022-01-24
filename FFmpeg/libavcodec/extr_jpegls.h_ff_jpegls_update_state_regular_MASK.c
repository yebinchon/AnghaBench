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
struct TYPE_4__ {int* A; int twonear; int* B; int* N; int* C; } ;
typedef  TYPE_1__ JLSState ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC4(JLSState *state,
                                                 int Q, int err)
{
    if(FUNC0(err) > 0xFFFF)
        return -0x10000;
    state->A[Q] += FUNC0(err);
    err         *= state->twonear;
    state->B[Q] += err;

    FUNC3(state, Q);

    if (state->B[Q] <= -state->N[Q]) {
        state->B[Q] = FUNC1(state->B[Q] + state->N[Q], 1 - state->N[Q]);
        if (state->C[Q] > -128)
            state->C[Q]--;
    } else if (state->B[Q] > 0) {
        state->B[Q] = FUNC2(state->B[Q] - state->N[Q], 0);
        if (state->C[Q] < 127)
            state->C[Q]++;
    }

    return err;
}