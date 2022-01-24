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
struct user64_timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct user32_timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct select_nocancel_args {scalar_t__ tv; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  atv64 ;
typedef  int /*<<< orphan*/  atv32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct timeval*) ; 
 int FUNC4 (struct proc*,struct select_nocancel_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 

int
FUNC6(struct proc *p, struct select_nocancel_args *uap, int32_t *retval)
{
	uint64_t timeout = 0;

	if (uap->tv) {
		int err;
		struct timeval atv;
		if (FUNC0(p)) {
			struct user64_timeval atv64;
			err = FUNC2(uap->tv, (caddr_t)&atv64, sizeof(atv64));
			/* Loses resolution - assume timeout < 68 years */
			atv.tv_sec = atv64.tv_sec;
			atv.tv_usec = atv64.tv_usec;
		} else {
			struct user32_timeval atv32;
			err = FUNC2(uap->tv, (caddr_t)&atv32, sizeof(atv32));
			atv.tv_sec = atv32.tv_sec;
			atv.tv_usec = atv32.tv_usec;
		}
		if (err)
			return err;

		if (FUNC3(&atv)) {
			err = EINVAL;
			return err;
		}

		FUNC1(FUNC5(&atv), &timeout);
	}

	return FUNC4(p, uap, timeout, retval);
}