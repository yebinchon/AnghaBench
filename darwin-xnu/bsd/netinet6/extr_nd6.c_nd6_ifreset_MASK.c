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
struct nd_ifinfo {int initialized; int /*<<< orphan*/  retrans; int /*<<< orphan*/  basereachable; int /*<<< orphan*/  reachable; int /*<<< orphan*/  chlim; int /*<<< orphan*/  linkmtu; int /*<<< orphan*/  lock; } ;
struct ifnet {int /*<<< orphan*/  if_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_DEFHLIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nd_ifinfo* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  REACHABLE_TIME ; 
 int /*<<< orphan*/  RETRANS_TIMER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(struct ifnet *ifp)
{
	struct nd_ifinfo *ndi = FUNC2(ifp);
	FUNC3(NULL != ndi);
	FUNC3(ndi->initialized);

	FUNC0(&ndi->lock, LCK_MTX_ASSERT_OWNED);
	ndi->linkmtu = ifp->if_mtu;
	ndi->chlim = IPV6_DEFHLIM;
	ndi->basereachable = REACHABLE_TIME;
	ndi->reachable = FUNC1(ndi->basereachable);
	ndi->retrans = RETRANS_TIMER;
}