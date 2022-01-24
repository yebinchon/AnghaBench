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
 double** FUNC2 (int,double**,double**) ; 

int FUNC3(int argc, char *argv[])
{
	int n = 300;
	double **a, **b, **m;
	n = (n/2) * 2;
	a = FUNC1(n); b = FUNC1(n);
	m = FUNC2(n, a, b);
	//fprintf(stderr, "%lf\n", m[n/2][n/2]);
	FUNC0(n, a); FUNC0(n, b); FUNC0(n, m);
	return 0;
}