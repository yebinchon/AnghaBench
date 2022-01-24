#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcpcb {scalar_t__ t_pmtud_saved_maxopd; scalar_t__ t_maxopd; scalar_t__ t_maxseg; TYPE_1__* t_inpcb; scalar_t__ t_pmtud_start_ts; int /*<<< orphan*/  t_flags; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* cwnd_init ) (struct tcpcb*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  tcps_pmtudbh_reverted; } ;
struct TYPE_4__ {int /*<<< orphan*/  inp_socket; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  TF_BLACKHOLE ; 
 int /*<<< orphan*/  TF_PMTUD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ tcpstat ; 

void
FUNC4(struct tcpcb *tp)
{
	int32_t optlen;

	FUNC1(tp->t_pmtud_saved_maxopd > 0);
	tp->t_flags |= TF_PMTUD;
	tp->t_flags &= ~TF_BLACKHOLE;
	optlen = tp->t_maxopd - tp->t_maxseg;
	tp->t_maxopd = tp->t_pmtud_saved_maxopd;
	tp->t_maxseg = tp->t_maxopd - optlen;

	/*
	 * Reset the slow-start flight size as it
	 * may depend on the new MSS
	 */
	if (FUNC0(tp)->cwnd_init != NULL)
		FUNC0(tp)->cwnd_init(tp);
	tp->t_pmtud_start_ts = 0;
	tcpstat.tcps_pmtudbh_reverted++;

	/* change MSS according to recommendation, if there was one */
	FUNC3(tp->t_inpcb->inp_socket, NULL);
}