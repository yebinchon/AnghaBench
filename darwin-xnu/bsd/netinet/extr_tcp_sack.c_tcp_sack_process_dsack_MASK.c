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
struct tcpopt {int to_nsacks; scalar_t__ to_sacks; } ;
struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {int t_flagsext; scalar_t__ t_tlphighrxt; int t_rxtshift; scalar_t__ snd_una; int /*<<< orphan*/  snd_holes; int /*<<< orphan*/  t_dsack_recvd; } ;
struct tcp_rxt_seg {int rx_count; int /*<<< orphan*/  rx_flags; } ;
struct sackblk {scalar_t__ start; scalar_t__ end; } ;
typedef  int /*<<< orphan*/  second_sack ;
typedef  int /*<<< orphan*/  first_sack ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  tcps_dsack_disable; int /*<<< orphan*/  tcps_dsack_ackloss; int /*<<< orphan*/  tcps_dsack_recvd; int /*<<< orphan*/  tcps_dsack_recvd_old; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ TCPOLEN_SACK ; 
 scalar_t__ FUNC5 (struct tcpcb*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TCP_RXT_DSACK_FOR_TLP ; 
 int /*<<< orphan*/  TCP_RXT_SPURIOUS ; 
 int /*<<< orphan*/  FUNC6 (struct tcpcb*,struct sackblk*,scalar_t__) ; 
 int TF_DISABLE_DSACK ; 
 int TF_SENT_TLPROBE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct sackblk*,int) ; 
 void* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  tcp_dsack_ignore_hw_duplicates ; 
 struct tcp_rxt_seg* FUNC9 (struct tcpcb*,scalar_t__,scalar_t__) ; 
 TYPE_1__ tcpstat ; 

boolean_t
FUNC10(struct tcpcb *tp, struct tcpopt *to,
    struct tcphdr *th)
{
	struct sackblk first_sack, second_sack;
	struct tcp_rxt_seg *rxseg;

	FUNC7(to->to_sacks, &first_sack, sizeof(first_sack));
	first_sack.start = FUNC8(first_sack.start);
	first_sack.end = FUNC8(first_sack.end);

	if (to->to_nsacks > 1) {
		FUNC7((to->to_sacks + TCPOLEN_SACK), &second_sack,
		    sizeof(second_sack));
		second_sack.start = FUNC8(second_sack.start);
		second_sack.end = FUNC8(second_sack.end);
	}

	if (FUNC3(first_sack.start, th->th_ack) &&
	    FUNC2(first_sack.end, th->th_ack)) {
		/*
		 * There is a dsack option reporting a duplicate segment
		 * also covered by cumulative acknowledgement.
		 *
		 * Validate the sequence numbers before looking at dsack
		 * option. The duplicate notification can come after
		 * snd_una moves forward. In order to set a window of valid
		 * sequence numbers to look for, we set a maximum send
		 * window within which the DSACK option will be processed.
		 */
		if (!(FUNC5(tp, first_sack.start, th->th_ack) &&
		    FUNC5(tp, first_sack.end, th->th_ack))) {
			to->to_nsacks--;
			to->to_sacks += TCPOLEN_SACK;
			tcpstat.tcps_dsack_recvd_old++;

			/*
			 * returning true here so that the ack will not be
			 * treated as duplicate ack.
			 */
			return (TRUE);
		}
	} else if (to->to_nsacks > 1 &&
	    FUNC2(second_sack.start, first_sack.start) &&
	    FUNC0(second_sack.end, first_sack.end)) {
		/*
		 * there is a dsack option in the first block not
		 * covered by the cumulative acknowledgement but covered
		 * by the second sack block.
		 *
		 * verify the sequence numbes on the second sack block
		 * before processing the DSACK option. Returning false
		 * here will treat the ack as a duplicate ack.
		 */
		if (!FUNC6(tp, &second_sack,
		    th->th_ack)) {
			to->to_nsacks--;
			to->to_sacks += TCPOLEN_SACK;
			tcpstat.tcps_dsack_recvd_old++;
			return (TRUE);
		}
	} else {
		/* no dsack options, proceed with processing the sack */
		return (FALSE);
	}

	/* Update the tcpopt pointer to exclude dsack block */
	to->to_nsacks--;
	to->to_sacks += TCPOLEN_SACK;
	tcpstat.tcps_dsack_recvd++;
	tp->t_dsack_recvd++;

	/* ignore DSACK option, if DSACK is disabled */
	if (tp->t_flagsext & TF_DISABLE_DSACK)
		return (TRUE);

	/* If the DSACK is for TLP mark it as such */
	if ((tp->t_flagsext & TF_SENT_TLPROBE) &&
	    first_sack.end == tp->t_tlphighrxt) {
		if ((rxseg = FUNC9(tp, first_sack.start,
		    (first_sack.end - 1))) != NULL)
			rxseg->rx_flags |= TCP_RXT_DSACK_FOR_TLP;
	}
	/* Update the sender's retransmit segment state */
	if (((tp->t_rxtshift == 1 && first_sack.start == tp->snd_una) ||
	    ((tp->t_flagsext & TF_SENT_TLPROBE) &&
	    first_sack.end == tp->t_tlphighrxt)) &&
	    FUNC4(&tp->snd_holes) &&
	    FUNC1(th->th_ack, tp->snd_una)) {
		/*
		 * If the dsack is for a retransmitted packet and one of
		 * the two cases is true, it indicates ack loss:
		 * - retransmit timeout and first_sack.start == snd_una
		 * - TLP probe and first_sack.end == tlphighrxt
		 *
		 * Ignore dsack and do not update state when there is
		 * ack loss
		 */
		tcpstat.tcps_dsack_ackloss++;

		return (TRUE);
	} else if ((rxseg = FUNC9(tp, first_sack.start,
	    (first_sack.end - 1))) == NULL) {
		/*
		 * Duplicate notification was not triggered by a
		 * retransmission. This might be due to network duplication,
		 * disable further DSACK processing.
		 */
		if (!tcp_dsack_ignore_hw_duplicates) {
			tp->t_flagsext |= TF_DISABLE_DSACK;
			tcpstat.tcps_dsack_disable++;
		}
	} else {
		/*
		 * If the segment was retransmitted only once, mark it as
		 * spurious. Otherwise ignore the duplicate notification.
		 */
		if (rxseg->rx_count == 1)
			rxseg->rx_flags |= TCP_RXT_SPURIOUS;
		else
			rxseg->rx_flags &= ~TCP_RXT_SPURIOUS;
	}
	return (TRUE);
}