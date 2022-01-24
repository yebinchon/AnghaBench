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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct mptcb {int /*<<< orphan*/  mpt_remotekey; int /*<<< orphan*/  mpt_localkey; int /*<<< orphan*/  mpt_mpte; } ;
typedef  int /*<<< orphan*/  mptcp_addr_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mptcb*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(mptcp_addr_id aid, struct mptcb *mp_tp, u_char *digest)
{
	uint32_t lrand, rrand;

	FUNC2(mp_tp->mpt_mpte);

	lrand = rrand = 0;
	FUNC0(aid, mp_tp, &lrand, &rrand);
	FUNC1(mp_tp->mpt_localkey, mp_tp->mpt_remotekey, lrand, rrand,
	    digest);
}