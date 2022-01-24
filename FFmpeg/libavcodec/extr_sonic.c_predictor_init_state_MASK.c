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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(int *k, int *state, int order)
{
    int i;

    for (i = order-2; i >= 0; i--)
    {
        int j, p, x = state[i];

        for (j = 0, p = i+1; p < order; j++,p++)
            {
            int tmp = x + FUNC0(k[j] * state[p], LATTICE_SHIFT);
            state[p] += FUNC0(k[j]*x, LATTICE_SHIFT);
            x = tmp;
        }
    }
}