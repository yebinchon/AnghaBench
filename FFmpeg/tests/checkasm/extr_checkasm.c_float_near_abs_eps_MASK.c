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
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,float,float,float,float) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2(float a, float b, float eps)
{
    float abs_diff = FUNC0(a - b);
    if (abs_diff < eps)
        return 1;

    FUNC1(stderr, "test failed comparing %f with %f (abs diff=%f with EPS=%f)\n", a, b, abs_diff, eps);

    return 0;
}