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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 () ; 

void
FUNC3(
	uint32_t		interval,
	uint32_t		leeway,
	uint32_t		scale_factor)
{
	uint64_t		abstime_interval;
	uint64_t		abstime_leeway;

	FUNC1(interval, scale_factor, &abstime_interval);
	FUNC1(leeway, scale_factor, &abstime_leeway);

	FUNC0(abstime_interval, FUNC2() + abstime_interval, abstime_leeway);
}