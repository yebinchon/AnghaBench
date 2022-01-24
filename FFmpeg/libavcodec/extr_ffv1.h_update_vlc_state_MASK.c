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
struct TYPE_3__ {int drift; int count; int error_sum; int bias; } ;
typedef  TYPE_1__ VlcState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const) ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (int,int) ; 

__attribute__((used)) static inline void FUNC3(VlcState *const state, const int v)
{
    int drift = state->drift;
    int count = state->count;
    state->error_sum += FUNC0(v);
    drift            += v;

    if (count == 128) { // FIXME: variable
        count            >>= 1;
        drift            >>= 1;
        state->error_sum >>= 1;
    }
    count++;

    if (drift <= -count) {
        state->bias = FUNC1(state->bias - 1, -128);

        drift = FUNC1(drift + count, -count + 1);
    } else if (drift > 0) {
        state->bias = FUNC2(state->bias + 1, 127);

        drift = FUNC2(drift - count, 0);
    }

    state->drift = drift;
    state->count = count;
}