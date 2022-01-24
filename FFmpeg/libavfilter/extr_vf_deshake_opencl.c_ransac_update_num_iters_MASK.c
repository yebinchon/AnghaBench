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
 double DBL_MIN ; 
 double FUNC0 (double,double) ; 
 double FUNC1 (double,double,double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double,int) ; 
 scalar_t__ FUNC4 (double) ; 

__attribute__((used)) static int FUNC5(double confidence, double num_outliers, int max_iters)
{
    double num, denom;

    confidence   = FUNC1(confidence, 0.0, 1.0);
    num_outliers = FUNC1(num_outliers, 0.0, 1.0);

    // avoid inf's & nan's
    num = FUNC0(1.0 - confidence, DBL_MIN);
    denom = 1.0 - FUNC3(1.0 - num_outliers, 3);
    if (denom < DBL_MIN) {
        return 0;
    }

    num = FUNC2(num);
    denom = FUNC2(denom);

    return denom >= 0 || -num >= max_iters * (-denom) ? max_iters : (int)FUNC4(num / denom);
}