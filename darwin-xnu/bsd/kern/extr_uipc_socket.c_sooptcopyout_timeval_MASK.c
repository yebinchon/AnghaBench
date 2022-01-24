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
typedef  int /*<<< orphan*/  tv64 ;
typedef  int /*<<< orphan*/  tv32 ;
struct user64_timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct user32_timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sockopt {scalar_t__ sopt_p; size_t sopt_valsize; int /*<<< orphan*/  sopt_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  caddr_t ; 
 int FUNC2 (void const*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ kernproc ; 
 size_t FUNC3 (size_t,size_t) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct sockopt *sopt, const struct timeval *tv_p)
{
	int			error;
	size_t			len;
	struct user64_timeval	tv64 = {};
	struct user32_timeval	tv32 = {};
	const void *		val;
	size_t			valsize;

	error = 0;
	if (FUNC4(sopt->sopt_p)) {
		len = sizeof (tv64);
		tv64.tv_sec = tv_p->tv_sec;
		tv64.tv_usec = tv_p->tv_usec;
		val = &tv64;
	} else {
		len = sizeof (tv32);
		tv32.tv_sec = tv_p->tv_sec;
		tv32.tv_usec = tv_p->tv_usec;
		val = &tv32;
	}
	valsize = FUNC3(len, sopt->sopt_valsize);
	sopt->sopt_valsize = valsize;
	if (sopt->sopt_val != USER_ADDR_NULL) {
		if (sopt->sopt_p != kernproc)
			error = FUNC2(val, sopt->sopt_val, valsize);
		else
			FUNC1(val, FUNC0(caddr_t, sopt->sopt_val), valsize);
	}
	return (error);
}