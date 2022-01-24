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
struct kperf_sample {int dummy; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 () ; 
 unsigned int intr_samplec ; 
 struct kperf_sample* intr_samplev ; 
 scalar_t__ FUNC2 () ; 

struct kperf_sample *
FUNC3(void)
{
	unsigned ncpu = FUNC1();

	FUNC0(FUNC2() == FALSE);
	FUNC0(ncpu < intr_samplec);

	return &(intr_samplev[ncpu]);
}