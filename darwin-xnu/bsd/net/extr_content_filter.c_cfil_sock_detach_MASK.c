#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_flags; scalar_t__ so_usecount; int /*<<< orphan*/ * so_cfil; } ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_2__ {int /*<<< orphan*/  cfs_sock_detached; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SOF_CONTENT_FILTER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cfil_stats ; 

errno_t
FUNC5(struct socket *so)
{
	if (FUNC0(so)) {
		FUNC3(so);
		return (0);
	}

	if (so->so_cfil) {
		if (so->so_flags & SOF_CONTENT_FILTER) {
			so->so_flags &= ~SOF_CONTENT_FILTER;
			FUNC2(so->so_usecount > 0);
			so->so_usecount--;
		}
		FUNC4(so->so_cfil);
		so->so_cfil = NULL;
		FUNC1(&cfil_stats.cfs_sock_detached);
	}
	return (0);
}