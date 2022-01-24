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

__attribute__((used)) static double FUNC0(double a, double b, double c, double d,
                             double dist)
{
    if (dist <= 1.0)
        return ((d * dist + c) * dist + b) * dist + a;
    else
        return FUNC0(0.0,
                               b + 2.0 * c + 3.0 * d,
                               c + 3.0 * d,
                              -b - 3.0 * c - 6.0 * d,
                              dist - 1.0);
}