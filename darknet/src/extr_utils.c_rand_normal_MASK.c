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
 scalar_t__ RAND_MAX ; 
 double TWO_PI ; 
 float FUNC0 (double) ; 
 int FUNC1 (double) ; 
 double FUNC2 () ; 
 float FUNC3 (double) ; 
 float FUNC4 (double) ; 

float FUNC5()
{
    static int haveSpare = 0;
    static double rand1, rand2;

    if(haveSpare)
    {
        haveSpare = 0;
        return FUNC4(rand1) * FUNC3(rand2);
    }

    haveSpare = 1;

    rand1 = FUNC2() / ((double) RAND_MAX);
    if(rand1 < 1e-100) rand1 = 1e-100;
    rand1 = -2 * FUNC1(rand1);
    rand2 = (FUNC2() / ((double) RAND_MAX)) * TWO_PI;

    return FUNC4(rand1) * FUNC0(rand2);
}