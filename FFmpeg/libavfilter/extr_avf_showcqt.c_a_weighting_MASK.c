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
 double FUNC0 (double) ; 

__attribute__((used)) static double FUNC1(void *p, double f)
{
    double ret = 12200.0*12200.0 * (f*f*f*f);
    ret /= (f*f + 20.6*20.6) * (f*f + 12200.0*12200.0) *
           FUNC0((f*f + 107.7*107.7) * (f*f + 737.9*737.9));
    return ret;
}