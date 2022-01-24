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
typedef  int /*<<< orphan*/  FoSection ;

/* Variables and functions */
 int FILTER_ORDER ; 
 double FUNC0 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static double FUNC1(FoSection *s1, double in)
{
    double p0 = in, p1;
    int i;

    for (i = 0; i < FILTER_ORDER / 2; i++) {
        p1 = FUNC0(&s1[i], p0);
        p0 = p1;
    }

    return p1;
}