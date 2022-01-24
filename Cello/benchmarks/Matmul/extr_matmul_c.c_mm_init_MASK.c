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
 double* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 

double **FUNC2(int n)
{
	double **m;
	int i;
	m = (double**)FUNC1(n * sizeof(void*));
	for (i = 0; i < n; ++i)
		m[i] = FUNC0(n, sizeof(double));
	return m;
}