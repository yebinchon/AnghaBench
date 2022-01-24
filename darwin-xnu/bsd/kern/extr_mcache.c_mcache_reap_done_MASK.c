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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  THREAD_CALL_DELAY_LEEWAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mcache_reap_interval ; 
 int /*<<< orphan*/  mcache_reap_interval_leeway ; 
 int /*<<< orphan*/  mcache_reap_tcall ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *flag)
{
	uint64_t deadline, leeway;

	FUNC1(mcache_reap_interval, NSEC_PER_SEC,
	    &deadline);
	FUNC0(mcache_reap_interval_leeway,
	    NSEC_PER_SEC, &leeway);
	FUNC2(mcache_reap_tcall, flag,
	    deadline, leeway, THREAD_CALL_DELAY_LEEWAY);
}