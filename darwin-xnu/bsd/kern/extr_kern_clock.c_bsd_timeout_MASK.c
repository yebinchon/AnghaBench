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
typedef  scalar_t__ timeout_fcn_t ;
typedef  int /*<<< orphan*/  thread_call_func_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

void
FUNC3(
	timeout_fcn_t			fcn,
	void					*param,
	struct timespec         *ts)
{
	uint64_t		deadline = 0;

	if (ts && (ts->tv_sec || ts->tv_nsec)) {
		FUNC1((uint64_t)ts->tv_sec * NSEC_PER_SEC + ts->tv_nsec,  &deadline );
		FUNC0( deadline, &deadline );
	}
	FUNC2((thread_call_func_t)fcn, param, deadline);
}