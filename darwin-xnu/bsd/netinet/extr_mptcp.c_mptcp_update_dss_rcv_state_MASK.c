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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int64_t ;
struct tcpcb {int dummy; } ;
struct mptcp_dsn_opt {int /*<<< orphan*/  mdss_data_len; int /*<<< orphan*/  mdss_subflow_seqn; int /*<<< orphan*/  mdss_dsn; } ;
struct mptcb {int /*<<< orphan*/  mpt_rcvnxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mptcb*,struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mptcb* FUNC4 (struct tcpcb*) ; 

void
FUNC5(struct mptcp_dsn_opt *dss_info, struct tcpcb *tp,
    uint16_t csum)
{
	struct mptcb *mp_tp = FUNC4(tp);
	u_int64_t full_dsn = 0;

	FUNC1(dss_info->mdss_dsn);
	FUNC1(dss_info->mdss_subflow_seqn);
	FUNC2(dss_info->mdss_data_len);

	/* XXX for autosndbuf grow sb here */
	FUNC0(mp_tp->mpt_rcvnxt, dss_info->mdss_dsn, full_dsn);
	FUNC3(mp_tp, tp,
	    full_dsn, dss_info->mdss_subflow_seqn, dss_info->mdss_data_len,
	    csum);

}