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
struct socket {int so_flags; int /*<<< orphan*/ * so_cfil; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAX_CONTENT_FILTER ; 
 int SHUT_RD ; 
 int SHUT_WR ; 
 int SOF_CONTENT_FILTER ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 

void
FUNC6(struct socket *so, int how)
{
	errno_t error = 0;
	int kcunit;

	if (FUNC1(so)) {
		FUNC4(so, how, 0, 0);
		return;
	}

	if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == NULL)
		return;

	FUNC0(LOG_INFO, "so %llx how %d",
		(uint64_t)FUNC2(so), how);

	FUNC5(so);

	for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
		/* Disconnect incoming side */
		if (how != SHUT_WR)
			error = FUNC3(so, so->so_cfil, kcunit, 0);
		/* Disconnect outgoing side */
		if (how != SHUT_RD)
			error = FUNC3(so, so->so_cfil, kcunit, 1);
	}
}