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
typedef  int /*<<< orphan*/  u_int16_t ;
struct ifnet {int /*<<< orphan*/  if_llreach_lock; int /*<<< orphan*/  if_ll_srcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  proto; } ;
struct if_llreach {int /*<<< orphan*/  lr_lastrcvd; TYPE_1__ lr_key; } ;

/* Variables and functions */
 unsigned int IF_LLREACH_MAXLEN ; 
 struct if_llreach* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct if_llreach*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ll_reach_tree ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(struct ifnet *ifp, u_int16_t llproto, void *addr,
    unsigned int alen)
{
	struct if_llreach find, *lr;

	FUNC1(alen == IF_LLREACH_MAXLEN);	/* for now */

	find.lr_key.proto = llproto;
	FUNC2(addr, &find.lr_key.addr, IF_LLREACH_MAXLEN);

	FUNC4(&ifp->if_llreach_lock);
	lr = FUNC0(ll_reach_tree, &ifp->if_ll_srcs, &find);
	if (lr == NULL) {
		FUNC3(&ifp->if_llreach_lock);
		return;
	}
	/*
	 * No need for lr_lock; atomically update the last rcvd uptime.
	 */
	lr->lr_lastrcvd = FUNC5();
	FUNC3(&ifp->if_llreach_lock);
}