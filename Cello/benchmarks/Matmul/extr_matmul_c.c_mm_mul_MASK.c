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
 int /*<<< orphan*/  FUNC0 (int,double**) ; 
 double** FUNC1 (int) ; 

double **FUNC2(int n, double *const *a, double *const *b)
{
	int i, j, k;
	double **m, **c;
	m = FUNC1(n); c = FUNC1(n);
	for (i = 0; i < n; ++i) // transpose
		for (j = 0; j < n; ++j)
			c[i][j] = b[j][i];
	for (i = 0; i < n; ++i) {
		double *p = a[i], *q = m[i];
		for (j = 0; j < n; ++j) {
			double t = 0.0, *r = c[j];
			for (k = 0; k < n; ++k)
				t += p[k] * r[k];
			q[j] = t;
		}
	}
	FUNC0(n, c);
	return m;
}