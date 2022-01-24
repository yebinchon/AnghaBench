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
struct ip_msource {scalar_t__ ims_stp; int /*<<< orphan*/  ims_haddr; } ;
struct in_multi {scalar_t__ inm_nsrc; TYPE_1__* inm_st; int /*<<< orphan*/  inm_srcs; } ;
typedef  int /*<<< orphan*/  in_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  iss_rec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct in_multi*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct ip_msource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ip_msource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ip_msource*) ; 
 scalar_t__ in_mcast_maxgrpsrc ; 
 int /*<<< orphan*/  ip_msource_tree ; 
 struct ip_msource* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 

int
FUNC5(struct in_multi *inm, const in_addr_t naddr)
{
	struct ip_msource	 find;
	struct ip_msource	*ims, *nims;

	FUNC0(inm);

	find.ims_haddr = FUNC4(naddr);
	ims = FUNC1(ip_msource_tree, &inm->inm_srcs, &find);
	if (ims && ims->ims_stp)
		return (0);
	if (ims == NULL) {
		if (inm->inm_nsrc == in_mcast_maxgrpsrc)
			return (-ENOSPC);
		nims = FUNC3(M_WAITOK);
		if (nims == NULL)
			return (-ENOMEM);
		nims->ims_haddr = find.ims_haddr;
		FUNC2(ip_msource_tree, &inm->inm_srcs, nims);
		++inm->inm_nsrc;
		ims = nims;
	}

	/*
	 * Mark the source as recorded and update the recorded
	 * source count.
	 */
	++ims->ims_stp;
	++inm->inm_st[1].iss_rec;

	return (1);
}