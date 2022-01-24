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
 double FUNC0 (double,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 double FUNC3 (double,double,double,double,double,double,int) ; 
 double FUNC4 (double) ; 

__attribute__((used)) static double FUNC5(double lin_slope, double ratio, double thres,
                          double knee, double knee_start, double knee_stop,
                          double range, int mode)
{
    double slope = FUNC4(lin_slope);
    double tratio = ratio;
    double gain = 0.;
    double delta = 0.;

    if (FUNC1(ratio))
        tratio = 1000.;
    gain = (slope - thres) * tratio + thres;
    delta = tratio;

    if (mode) {
        if (knee > 1. && slope < knee_stop)
            gain = FUNC3(slope, knee_stop, knee_start, ((knee_stop - thres) * tratio  + thres), knee_start, delta, 1.);
    } else {
        if (knee > 1. && slope > knee_start)
            gain = FUNC3(slope, knee_start, knee_stop, ((knee_start - thres) * tratio  + thres), knee_stop, delta, 1.);
    }
    return FUNC0(range, FUNC2(gain - slope));
}