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
struct ifnet {int if_eflags; TYPE_1__* if_inp; } ;
struct if_rxpoll_stats {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pstats; } ;

/* Variables and functions */
 int IFEF_RXPOLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct if_rxpoll_stats*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct if_rxpoll_stats*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int) ; 

void
FUNC5(struct ifnet *ifp, struct if_rxpoll_stats *if_rs)
{
	FUNC2(if_rs, sizeof (*if_rs));
	if (!(ifp->if_eflags & IFEF_RXPOLL) || !FUNC4(ifp, 1))
		return;

	/* by now, ifnet will stay attached so if_inp must be valid */
	FUNC0(ifp->if_inp != NULL);
	FUNC1(&ifp->if_inp->pstats, if_rs, sizeof (*if_rs));

	/* Release the IO refcnt */
	FUNC3(ifp);
}