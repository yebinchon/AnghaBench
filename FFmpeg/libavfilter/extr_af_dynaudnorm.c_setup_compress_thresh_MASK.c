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
 double DBL_EPSILON ; 
 int FUNC0 (int) ; 
 double FUNC1 (double,double) ; 
 scalar_t__ FUNC2 (double) ; 

__attribute__((used)) static double FUNC3(double threshold)
{
    if ((threshold > DBL_EPSILON) && (threshold < (1.0 - DBL_EPSILON))) {
        double current_threshold = threshold;
        double step_size = 1.0;

        while (step_size > DBL_EPSILON) {
            while ((FUNC2((current_threshold + step_size) * (FUNC0(1) << 63)) >
                    FUNC2(current_threshold * (FUNC0(1) << 63))) &&
                   (FUNC1(current_threshold + step_size, 1.0) <= threshold)) {
                current_threshold += step_size;
            }

            step_size /= 2.0;
        }

        return current_threshold;
    } else {
        return threshold;
    }
}