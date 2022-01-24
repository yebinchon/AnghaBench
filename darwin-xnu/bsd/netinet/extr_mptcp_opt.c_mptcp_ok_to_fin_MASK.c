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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct tcpcb {int dummy; } ;
struct mptcb {int mpt_sndmax; int /*<<< orphan*/  mpt_mpte; } ;

/* Variables and functions */
 int MPTCP_DATASEQ_LOW32_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mptcb* FUNC1 (struct tcpcb*) ; 

__attribute__((used)) static int
FUNC2(struct tcpcb *tp, u_int64_t dsn, u_int32_t datalen)
{
	struct mptcb *mp_tp = FUNC1(tp);

	FUNC0(mp_tp->mpt_mpte);

	dsn = (mp_tp->mpt_sndmax & MPTCP_DATASEQ_LOW32_MASK) | dsn;
	if ((dsn + datalen) == mp_tp->mpt_sndmax)
		return (1);

	return (0);
}