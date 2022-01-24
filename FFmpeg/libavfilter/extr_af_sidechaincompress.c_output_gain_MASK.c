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
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double,double,double,double,double,double,double) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static double FUNC4(double lin_slope, double ratio, double thres,
                          double knee, double knee_start, double knee_stop,
                          double compressed_knee_start,
                          double compressed_knee_stop,
                          int detection, int mode)
{
    double slope = FUNC3(lin_slope);
    double gain = 0.0;
    double delta = 0.0;

    if (detection)
        slope *= 0.5;

    if (FUNC0(ratio)) {
        gain = thres;
        delta = 0.0;
    } else {
        gain = (slope - thres) / ratio + thres;
        delta = 1.0 / ratio;
    }

    if (mode) {
        if (knee > 1.0 && slope > knee_start)
            gain = FUNC2(slope, knee_stop, knee_start,
                                         knee_stop, compressed_knee_start,
                                         1.0, delta);
    } else {
        if (knee > 1.0 && slope < knee_stop)
            gain = FUNC2(slope, knee_start, knee_stop,
                                         knee_start, compressed_knee_stop,
                                         1.0, delta);
    }

    return FUNC1(gain - slope);
}