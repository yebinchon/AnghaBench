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
typedef  int int16_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 double FUNC1 (double,double) ; 
 int LUT_BITS ; 
 int* FUNC2 (int) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 int FUNC5 (double) ; 
 double FUNC6 (double,double) ; 

__attribute__((used)) static int16_t *FUNC7(double dist25, int depth)
{
    int i;
    double gamma, simil, C;
    int16_t *ct = FUNC2((512<<LUT_BITS)*sizeof(int16_t));
    if (!ct)
        return NULL;

    gamma = FUNC4(0.25) / FUNC4(1.0 - FUNC1(dist25,252.0)/255.0 - 0.00001);

    for (i = -256<<LUT_BITS; i < 256<<LUT_BITS; i++) {
        double f = ((i<<(9-LUT_BITS)) + (1<<(8-LUT_BITS)) - 1) / 512.0; // midpoint of the bin
        simil = FUNC0(0, 1.0 - FUNC3(f) / 255.0);
        C = FUNC6(simil, gamma) * 256.0 * f;
        ct[(256<<LUT_BITS)+i] = FUNC5(C);
    }

    ct[0] = !!dist25;
    return ct;
}