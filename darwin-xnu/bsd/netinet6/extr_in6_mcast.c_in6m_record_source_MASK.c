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
struct in6_addr {int dummy; } ;
struct ip6_msource {scalar_t__ im6s_stp; struct in6_addr im6s_addr; } ;
struct in6_multi {scalar_t__ in6m_nsrc; TYPE_1__* in6m_st; int /*<<< orphan*/  in6m_srcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  iss_rec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct in6_multi*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct ip6_msource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ip6_msource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ip6_msource*) ; 
 scalar_t__ in6_mcast_maxgrpsrc ; 
 int /*<<< orphan*/  ip6_msource_tree ; 
 struct ip6_msource* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct in6_multi *inm, const struct in6_addr *addr)
{
	struct ip6_msource	 find;
	struct ip6_msource	*ims, *nims;

	FUNC0(inm);

	find.im6s_addr = *addr;
	ims = FUNC1(ip6_msource_tree, &inm->in6m_srcs, &find);
	if (ims && ims->im6s_stp)
		return (0);
	if (ims == NULL) {
		if (inm->in6m_nsrc == in6_mcast_maxgrpsrc)
			return (-ENOSPC);
		nims = FUNC3(M_WAITOK);
		if (nims == NULL)
			return (-ENOMEM);
		nims->im6s_addr = find.im6s_addr;
		FUNC2(ip6_msource_tree, &inm->in6m_srcs, nims);
		++inm->in6m_nsrc;
		ims = nims;
	}

	/*
	 * Mark the source as recorded and update the recorded
	 * source count.
	 */
	++ims->im6s_stp;
	++inm->in6m_st[1].iss_rec;

	return (1);
}