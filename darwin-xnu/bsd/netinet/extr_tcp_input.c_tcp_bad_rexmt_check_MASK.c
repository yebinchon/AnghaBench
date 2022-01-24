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
struct tcpopt {int to_flags; scalar_t__ to_tsecr; } ;
struct tcphdr {int /*<<< orphan*/  th_ack; } ;
struct tcpcb {scalar_t__ t_rxtshift; int t_flagsext; scalar_t__ t_tlphighrxt; int t_flags; scalar_t__ t_pmtud_start_ts; scalar_t__ t_tlpstart; scalar_t__ t_rxtstart; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcps_dsack_badrexmt; int /*<<< orphan*/  tcps_tlp_recoverlastpkt; int /*<<< orphan*/  tcps_sndrexmitbad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TCP_CC_BAD_REXMT_RECOVERY ; 
 int /*<<< orphan*/  TCP_CC_DSACK_BAD_REXMT ; 
 int /*<<< orphan*/  TCP_CC_TLP_RECOVER_LASTPACKET ; 
 int TF_BLACKHOLE ; 
 int TF_SENT_TLPROBE ; 
 int TOF_TS ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcpcb*,struct tcphdr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tcpcb*,struct tcphdr*,struct tcpopt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcpcb*) ; 
 scalar_t__ FUNC11 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct tcpcb*) ; 
 TYPE_1__ tcpstat ; 

__attribute__((used)) static void
FUNC13(struct tcpcb *tp, struct tcphdr *th, struct tcpopt *to)
{
	if (tp->t_rxtshift > 0 &&
	    FUNC7(tp, th, to, tp->t_rxtstart)) {
		++tcpstat.tcps_sndrexmitbad;
		FUNC5(tp, th);
		FUNC6(tp, th, TCP_CC_BAD_REXMT_RECOVERY);
	} else if ((tp->t_flagsext & TF_SENT_TLPROBE)
	    && tp->t_tlphighrxt > 0
	    && FUNC2(th->th_ack, tp->t_tlphighrxt)
	    && !FUNC7(tp, th, to, tp->t_tlpstart)) {
		/*
		 * check DSACK information also to make sure that
		 * the TLP was indeed needed
		 */
		if (FUNC12(tp)) {
			/*
			 * received a DSACK to indicate that TLP was
			 * not needed
			 */
			FUNC10(tp);
			goto out;
		}

		/*
		 * The tail loss probe recovered the last packet and
		 * we need to adjust the congestion window to take
		 * this loss into account.
		 */
		++tcpstat.tcps_tlp_recoverlastpkt;
		if (!FUNC1(tp)) {
			FUNC9(tp);
			FUNC0(tp);
		}
		FUNC6(tp, th, TCP_CC_TLP_RECOVER_LASTPACKET);
	} else if (FUNC11(tp, th->th_ack)) {
		/*
		 * All of the retransmitted segments were duplicated, this
		 * can be an indication of bad fast retransmit.
		 */
		tcpstat.tcps_dsack_badrexmt++;
		FUNC5(tp, th);
		FUNC6(tp, th, TCP_CC_DSACK_BAD_REXMT);
		FUNC10(tp);
	}
out:
	tp->t_flagsext &= ~(TF_SENT_TLPROBE);
	tp->t_tlphighrxt = 0;
	tp->t_tlpstart = 0;

	/*
	 * check if the latest ack was for a segment sent during PMTU
	 * blackhole detection. If the timestamp on the ack is before
	 * PMTU blackhole detection, then revert the size of the max
	 * segment to previous size.
	 */
	if (tp->t_rxtshift > 0 && (tp->t_flags & TF_BLACKHOLE) &&
	    tp->t_pmtud_start_ts > 0 && FUNC4(tp)) {
		if ((to->to_flags & TOF_TS) && to->to_tsecr != 0
		    && FUNC3(to->to_tsecr, tp->t_pmtud_start_ts)) {
			FUNC8(tp);
		}
	}
	if (tp->t_pmtud_start_ts > 0)
		tp->t_pmtud_start_ts = 0;
}