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
typedef  int /*<<< orphan*/  AVLFG ;

/* Variables and functions */
 double UINT_MAX ; 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 

void FUNC3(AVLFG *lfg, double out[2])
{
    double x1, x2, w;

    do {
        x1 = 2.0 / UINT_MAX * FUNC0(lfg) - 1.0;
        x2 = 2.0 / UINT_MAX * FUNC0(lfg) - 1.0;
        w  = x1 * x1 + x2 * x2;
    } while (w >= 1.0);

    w = FUNC2((-2.0 * FUNC1(w)) / w);
    out[0] = x1 * w;
    out[1] = x2 * w;
}