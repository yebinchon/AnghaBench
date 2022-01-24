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
 float FUNC0 (float*,int) ; 
 double FUNC1 (float*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,double,float,float) ; 
 float FUNC3 (float*,int) ; 

void FUNC4(float *a, int n)
{
    float m = FUNC0(a, n);
    float v = FUNC3(a, n);
    FUNC2("MSE: %.6f, Mean: %.6f, Variance: %.6f\n", FUNC1(a, n), m, v);
}