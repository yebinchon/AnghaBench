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
typedef  int /*<<< orphan*/  FFEBUR128State ;

/* Variables and functions */
 double HUGE_VAL ; 
 int FUNC0 (int /*<<< orphan*/ *,double*) ; 
 double FUNC1 (double) ; 

int FUNC2(FFEBUR128State * st, double *out)
{
    double energy;
    int error = FUNC0(st, &energy);
    if (error) {
        return error;
    } else if (energy <= 0.0) {
        *out = -HUGE_VAL;
        return 0;
    }
    *out = FUNC1(energy);
    return 0;
}