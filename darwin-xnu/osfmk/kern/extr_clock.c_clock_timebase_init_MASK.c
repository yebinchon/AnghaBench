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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 scalar_t__ hz_tick_interval ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	uint64_t	abstime;

	FUNC0(NSEC_PER_SEC / 100, &abstime);
	hz_tick_interval = (uint32_t)abstime;

	FUNC1();
}