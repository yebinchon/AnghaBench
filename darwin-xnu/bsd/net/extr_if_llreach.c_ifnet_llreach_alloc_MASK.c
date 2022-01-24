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
typedef  scalar_t__ u_int64_t ;
typedef  void* u_int16_t ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct ifnet {int /*<<< orphan*/  if_llreach_lock; int /*<<< orphan*/  if_ll_srcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; void* proto; } ;
struct if_llreach {int lr_reqcnt; int lr_basereachable; int /*<<< orphan*/  lr_npm; int /*<<< orphan*/  lr_lqm; int /*<<< orphan*/  lr_rssi; TYPE_1__ lr_key; struct ifnet* lr_ifp; int /*<<< orphan*/  lr_debug; int /*<<< orphan*/  lr_reachable; int /*<<< orphan*/  lr_basecal; void* lr_lastrcvd; void* lr_baseup; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFD_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct if_llreach*) ; 
 int /*<<< orphan*/  FUNC1 (struct if_llreach*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_llreach*) ; 
 int /*<<< orphan*/  IFNET_LQM_THRESH_UNKNOWN ; 
 int /*<<< orphan*/  IFNET_NPM_THRESH_UNKNOWN ; 
 int /*<<< orphan*/  IFNET_RSSI_UNKNOWN ; 
 unsigned int IF_LLREACH_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct if_llreach* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct if_llreach*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct if_llreach*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*) ; 
 struct if_llreach* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ll_reach_tree ; 
 void* FUNC15 () ; 

struct if_llreach *
FUNC16(struct ifnet *ifp, u_int16_t llproto, void *addr,
    unsigned int alen, u_int64_t llreach_base)
{
	struct if_llreach find, *lr;
	struct timeval cnow;

	if (llreach_base == 0)
		return (NULL);

	FUNC7(alen == IF_LLREACH_MAXLEN);	/* for now */

	find.lr_key.proto = llproto;
	FUNC8(addr, &find.lr_key.addr, IF_LLREACH_MAXLEN);

	FUNC13(&ifp->if_llreach_lock);
	lr = FUNC5(ll_reach_tree, &ifp->if_ll_srcs, &find);
	if (lr != NULL) {
found:
		FUNC1(lr);
		FUNC7(lr->lr_reqcnt >= 1);
		lr->lr_reqcnt++;
		FUNC7(lr->lr_reqcnt != 0);
		FUNC0(lr);		/* for caller */
		lr->lr_lastrcvd = FUNC15();	/* current approx. uptime */
		FUNC2(lr);
		FUNC11(&ifp->if_llreach_lock);
		return (lr);
	}

	if (!FUNC14(&ifp->if_llreach_lock))
		FUNC12(&ifp->if_llreach_lock);

	FUNC3(&ifp->if_llreach_lock, LCK_RW_ASSERT_EXCLUSIVE);

	/* in case things have changed while becoming writer */
	lr = FUNC5(ll_reach_tree, &ifp->if_ll_srcs, &find);
	if (lr != NULL)
		goto found;

	lr = FUNC10(M_WAITOK);
	if (lr == NULL) {
		FUNC11(&ifp->if_llreach_lock);
		return (NULL);
	}
	FUNC1(lr);
	lr->lr_reqcnt++;
	FUNC7(lr->lr_reqcnt == 1);
	FUNC0(lr);			/* for RB tree */
	FUNC0(lr);			/* for caller */
	lr->lr_lastrcvd = FUNC15();		/* current approx. uptime */
	lr->lr_baseup = lr->lr_lastrcvd;	/* base uptime */
	FUNC9(&cnow);
	lr->lr_basecal = cnow.tv_sec;		/* base calendar time */
	lr->lr_basereachable = llreach_base;
	lr->lr_reachable = FUNC4(lr->lr_basereachable * 1000);
	lr->lr_debug |= IFD_ATTACHED;
	lr->lr_ifp = ifp;
	lr->lr_key.proto = llproto;
	FUNC8(addr, &lr->lr_key.addr, IF_LLREACH_MAXLEN);
	lr->lr_rssi = IFNET_RSSI_UNKNOWN;
	lr->lr_lqm = IFNET_LQM_THRESH_UNKNOWN;
	lr->lr_npm = IFNET_NPM_THRESH_UNKNOWN;
	FUNC6(ll_reach_tree, &ifp->if_ll_srcs, lr);
	FUNC2(lr);
	FUNC11(&ifp->if_llreach_lock);

	return (lr);
}