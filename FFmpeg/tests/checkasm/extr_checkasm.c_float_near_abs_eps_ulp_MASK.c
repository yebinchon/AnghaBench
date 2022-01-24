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
 scalar_t__ FUNC0 (float,float,float) ; 
 scalar_t__ FUNC1 (float,float,unsigned int) ; 

int FUNC2(float a, float b, float eps, unsigned max_ulp)
{
    return FUNC1(a, b, max_ulp) || FUNC0(a, b, eps);
}