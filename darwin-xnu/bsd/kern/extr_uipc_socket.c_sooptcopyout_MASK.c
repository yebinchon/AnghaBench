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
struct sockopt {size_t sopt_valsize; scalar_t__ sopt_val; scalar_t__ sopt_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  caddr_t ; 
 int FUNC2 (void*,scalar_t__,size_t) ; 
 scalar_t__ kernproc ; 
 size_t FUNC3 (size_t,size_t) ; 

int
FUNC4(struct sockopt *sopt, void *buf, size_t len)
{
	int	error;
	size_t	valsize;

	error = 0;

	/*
	 * Documented get behavior is that we always return a value,
	 * possibly truncated to fit in the user's buffer.
	 * Traditional behavior is that we always tell the user
	 * precisely how much we copied, rather than something useful
	 * like the total amount we had available for her.
	 * Note that this interface is not idempotent; the entire answer must
	 * generated ahead of time.
	 */
	valsize = FUNC3(len, sopt->sopt_valsize);
	sopt->sopt_valsize = valsize;
	if (sopt->sopt_val != USER_ADDR_NULL) {
		if (sopt->sopt_p != kernproc)
			error = FUNC2(buf, sopt->sopt_val, valsize);
		else
			FUNC1(buf, FUNC0(caddr_t, sopt->sopt_val), valsize);
	}
	return (error);
}