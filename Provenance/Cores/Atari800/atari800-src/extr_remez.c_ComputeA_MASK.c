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
 double Pi2 ; 
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 

__attribute__((used)) static double FUNC2(double freq, int r, const double ad[],
                       const double x[], const double y[])
{
	int i;
	double xc, c, denom, numer;

	denom = numer = 0;
	xc = FUNC0(Pi2 * freq);
	for (i = 0; i <= r; i++) {
		c = xc - x[i];
		if (FUNC1(c) < 1.0e-7) {
			numer = y[i];
			denom = 1;
			break;
		}
		c = ad[i] / c;
		denom += c;
		numer += c * y[i];
	}
	return numer / denom;
}