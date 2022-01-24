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
typedef  size_t uint32_t ;
struct socket {int so_restrictions; } ;
struct mptses {size_t mpte_itfinfo_size; struct mpt_itf_info* mpte_itfinfo; } ;
struct mpt_itf_info {size_t ifindex; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 size_t IFSCOPE_NONE ; 
 int SO_RESTRICT_DENY_CELLULAR ; 
 int SO_RESTRICT_DENY_EXPENSIVE ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mptses* FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct mptses*) ; 

void
FUNC6(struct socket *mp_so)
{
	struct mptses *mpte = FUNC4(mp_so);
	uint32_t i;

	FUNC5(mpte);

	FUNC3();

	for (i = 0; i < mpte->mpte_itfinfo_size; i++) {
		struct mpt_itf_info *info = &mpte->mpte_itfinfo[i];
		uint32_t ifindex = info->ifindex;
		struct ifnet *ifp;

		if (ifindex == IFSCOPE_NONE)
			continue;

		ifp = ifindex2ifnet[ifindex];
		if (ifp == NULL)
			continue;

		if (FUNC1(ifp) &&
		    (mp_so->so_restrictions & SO_RESTRICT_DENY_EXPENSIVE))
			info->ifindex = IFSCOPE_NONE;

		if (FUNC0(ifp) &&
		    (mp_so->so_restrictions & SO_RESTRICT_DENY_CELLULAR))
			info->ifindex = IFSCOPE_NONE;
	}

	FUNC2();
}