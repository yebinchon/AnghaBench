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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  nfsnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

int
FUNC3(nfsnode_t np1, nfsnode_t np2, nfsnode_t np3, nfsnode_t np4, thread_t thd)
{
	nfsnode_t list[4];
	int i, lcnt, error;

	FUNC2(np1, np2, np3, np4, list, &lcnt);

	/* Now we can lock using list[0 - lcnt-1] */
	for (i = 0; i < lcnt; ++i)
		if ((error = FUNC1(list[i], thd))) {
			/* Drop any locks we acquired. */
			while (--i >= 0)
				FUNC0(list[i]);
			return (error);
		}
	return (0);
}