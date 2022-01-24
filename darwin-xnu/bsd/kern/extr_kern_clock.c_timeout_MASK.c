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
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void
FUNC2(
	timeout_fcn_t			fcn,
	void					*param,
	int						interval)
{
	uint64_t		deadline;

	FUNC0(interval, NSEC_PER_SEC / hz, &deadline);
	FUNC1((thread_call_func_t)fcn, param, deadline);
}