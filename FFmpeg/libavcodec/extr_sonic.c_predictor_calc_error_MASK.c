#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  LATTICE_SHIFT ; 
 int SAMPLE_FACTOR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(int *k, int *state, int order, int error)
{
    int i, x = error - FUNC0(k[order-1] * state[order-1], LATTICE_SHIFT);

#if 1
    int *k_ptr = &(k[order-2]),
        *state_ptr = &(state[order-2]);
    for (i = order-2; i >= 0; i--, k_ptr--, state_ptr--)
    {
        int k_value = *k_ptr, state_value = *state_ptr;
        x -= FUNC0(k_value * state_value, LATTICE_SHIFT);
        state_ptr[1] = state_value + FUNC0(k_value * x, LATTICE_SHIFT);
    }
#else
    for (i = order-2; i >= 0; i--)
    {
        x -= shift_down(k[i] * state[i], LATTICE_SHIFT);
        state[i+1] = state[i] + shift_down(k[i] * x, LATTICE_SHIFT);
    }
#endif

    // don't drift too far, to avoid overflows
    if (x >  (SAMPLE_FACTOR<<16)) x =  (SAMPLE_FACTOR<<16);
    if (x < -(SAMPLE_FACTOR<<16)) x = -(SAMPLE_FACTOR<<16);

    state[0] = x;

    return x;
}