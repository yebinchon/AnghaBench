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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int*) ; 
 scalar_t__ max_rt_quantum ; 
 scalar_t__ min_rt_quantum ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint64_t abstime;

	/* smallest rt computaton (50 us) */
	FUNC1(50, NSEC_PER_USEC, &abstime);
	FUNC0((abstime >> 32) == 0 && (uint32_t)abstime != 0);
	min_rt_quantum = (uint32_t)abstime;

	/* maximum rt computation (50 ms) */
	FUNC1(
		50, 1000*NSEC_PER_USEC, &abstime);
	FUNC0((abstime >> 32) == 0 && (uint32_t)abstime != 0);
	max_rt_quantum = (uint32_t)abstime;

}