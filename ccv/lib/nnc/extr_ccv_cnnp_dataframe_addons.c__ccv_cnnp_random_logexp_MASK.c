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
typedef  int /*<<< orphan*/  sfmt_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ * const) ; 

__attribute__((used)) static float FUNC3(sfmt_t* const sfmt, const float jitter)
{
	// We want to get something around logarithmic scale, thus, 0 is no good, and infinity is no good. 1 is the same.
	// jitter is some turbulence we want around 1. We want the range range to be around [1 / (1 + jitter), 1 + jitter]
	// but the distribution is not uniform (50% fall under 1, and 50% fall above 1). The way to do this is to first
	// get to logarithmic range, doing a uniform sampling, and then convert back.
	double log_jitter_limit = FUNC1(1 + jitter);
	double log_random_jitter = FUNC2(sfmt) * 2 * log_jitter_limit - log_jitter_limit;
	return (float)FUNC0(log_random_jitter); // Convert it back to exponential form.
}