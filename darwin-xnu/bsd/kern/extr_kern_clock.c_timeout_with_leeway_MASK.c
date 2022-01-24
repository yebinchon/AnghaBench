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
typedef  scalar_t__ timeout_fcn_t ;
typedef  int /*<<< orphan*/  thread_call_func_t ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  THREAD_CALL_DELAY_LEEWAY ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(
	timeout_fcn_t			fcn,
	void					*param,
	int						interval,
	int						leeway_interval)
{
	uint64_t		deadline;
	uint64_t		leeway;

	FUNC1(interval, NSEC_PER_SEC / hz, &deadline);

	FUNC0(leeway_interval, NSEC_PER_SEC / hz, &leeway);

	FUNC2((thread_call_func_t)fcn, param, deadline, leeway, THREAD_CALL_DELAY_LEEWAY);
}