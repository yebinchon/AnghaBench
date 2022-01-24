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
struct TYPE_3__ {double* band_centre; } ;
typedef  TYPE_1__ AudioFFTDeNoiseContext ;

/* Variables and functions */
 double M_LN10 ; 
 double FUNC0 (double) ; 
 int FUNC1 (double) ; 

__attribute__((used)) static int FUNC2(AudioFFTDeNoiseContext *s,
                          int band, double a,
                          double b, double c)
{
    double d1, d2, d3;

    d1 = a / s->band_centre[band];
    d1 = 10.0 * FUNC0(1.0 + d1 * d1) / M_LN10;
    d2 = b / s->band_centre[band];
    d2 = 10.0 * FUNC0(1.0 + d2 * d2) / M_LN10;
    d3 = s->band_centre[band] / c;
    d3 = 10.0 * FUNC0(1.0 + d3 * d3) / M_LN10;

    return FUNC1(-d1 + d2 - d3);
}