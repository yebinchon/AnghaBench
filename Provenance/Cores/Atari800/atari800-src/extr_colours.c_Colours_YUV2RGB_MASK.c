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
 int /*<<< orphan*/  FUNC0 (double,double,double,double*,double*,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  YUV2RGB_matrix ; 

void FUNC1(double y, double u, double v, double *r, double *g, double *b)
{
	FUNC0(y, u, v, r, g, b, YUV2RGB_matrix);
}