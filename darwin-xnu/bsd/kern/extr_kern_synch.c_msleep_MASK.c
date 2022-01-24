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
typedef  int /*<<< orphan*/  u_int64_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int (*) (int),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC3(
	void		*chan,
	lck_mtx_t	*mtx,
	int		pri,
	const char	*wmsg,
	struct timespec		*ts)
{
	u_int64_t	abstime = 0;

	if (ts && (ts->tv_sec || ts->tv_nsec)) {
		FUNC2((uint64_t)ts->tv_sec * NSEC_PER_SEC + ts->tv_nsec,  &abstime );
		FUNC1( abstime, &abstime );
	}

	return FUNC0((caddr_t)chan, pri, wmsg, abstime, (int (*)(int))0, mtx);
}