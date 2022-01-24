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
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 (double,double) ; 

double FUNC2(double lpc_error, unsigned total_samples)
{
	double error_scale;

	FUNC0(total_samples > 0);

	error_scale = 0.5 / (double)total_samples;

	return FUNC1(lpc_error, error_scale);
}