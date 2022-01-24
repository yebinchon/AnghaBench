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
struct mptcb {int /*<<< orphan*/  mpt_gc_ticks; int /*<<< orphan*/  mpt_rcvwnd; int /*<<< orphan*/  mpt_flags; int /*<<< orphan*/  mpt_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPTCPF_CHECKSUM ; 
 int /*<<< orphan*/  MPTCP_STD_VERSION_0 ; 
 int /*<<< orphan*/  MPT_GC_TICKS ; 
 scalar_t__ mptcp_dss_csum ; 
 int /*<<< orphan*/  FUNC0 (struct mptcb*) ; 

__attribute__((used)) static void
FUNC1(struct mptcb *mp_tp)
{
	/* There is only Version 0 at this time */
	mp_tp->mpt_version = MPTCP_STD_VERSION_0;

	/* Set DSS checksum flag */
	if (mptcp_dss_csum)
		mp_tp->mpt_flags |= MPTCPF_CHECKSUM;

	/* Set up receive window */
	mp_tp->mpt_rcvwnd = FUNC0(mp_tp);

	/* Set up gc ticks */
	mp_tp->mpt_gc_ticks = MPT_GC_TICKS;
}