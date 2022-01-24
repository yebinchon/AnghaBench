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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  void* tcp_seq ;
struct tcpopt {int to_nsacks; scalar_t__ to_sacks; } ;
struct tcphdr {void* th_ack; } ;
struct TYPE_2__ {int /*<<< orphan*/  sack_bytes_rexmit; } ;
struct tcpcb {TYPE_1__ sackhint; int /*<<< orphan*/  snd_holes; void* snd_fack; void* snd_una; } ;
struct sackhole {void* start; void* rxmit; int /*<<< orphan*/  rxmit_start; void* end; } ;
struct sackblk {void* start; void* end; } ;
typedef  int /*<<< orphan*/  sack ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,void*) ; 
 scalar_t__ FUNC1 (void*,void*) ; 
 scalar_t__ FUNC2 (void*,void*) ; 
 scalar_t__ FUNC3 (void*,void*) ; 
 void* FUNC4 (void*,void*) ; 
 void* FUNC5 (void*,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct sackhole* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sackhole* FUNC8 (struct sackhole*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCPOLEN_SACK ; 
 int TCP_MAX_SACK ; 
 scalar_t__ FUNC9 (struct tcpcb*,struct sackblk*,void*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct sackblk*,int) ; 
 void* FUNC12 (void*) ; 
 int /*<<< orphan*/  sackhole_head ; 
 int /*<<< orphan*/  scblink ; 
 int /*<<< orphan*/  FUNC13 (struct tcpcb*,struct sackhole*,void*,void*) ; 
 struct sackhole* FUNC14 (struct tcpcb*,void*,void*,struct sackhole*) ; 
 int /*<<< orphan*/  FUNC15 (struct tcpcb*,struct sackhole*) ; 

void
FUNC16(struct tcpcb *tp, struct tcpopt *to, struct tcphdr *th, 
	u_int32_t *newbytes_acked)
{
	struct sackhole *cur, *temp;
	struct sackblk sack, sack_blocks[TCP_MAX_SACK + 1], *sblkp;
	int i, j, num_sack_blks;
	tcp_seq old_snd_fack = 0, th_ack = th->th_ack;

	num_sack_blks = 0;
	/*
	 * If SND.UNA will be advanced by SEG.ACK, and if SACK holes exist,
	 * treat [SND.UNA, SEG.ACK) as if it is a SACK block.
	 */
	if (FUNC3(tp->snd_una, th_ack) && !FUNC6(&tp->snd_holes)) {
		sack_blocks[num_sack_blks].start = tp->snd_una;
		sack_blocks[num_sack_blks++].end = th_ack;
	}
	/*
	 * Append received valid SACK blocks to sack_blocks[].
	 * Check that the SACK block range is valid.
	 */
	for (i = 0; i < to->to_nsacks; i++) {
		FUNC11((to->to_sacks + i * TCPOLEN_SACK),
		    &sack, sizeof(sack));
		sack.start = FUNC12(sack.start);
		sack.end = FUNC12(sack.end);
		if (FUNC9(tp, &sack, th_ack))
			sack_blocks[num_sack_blks++] = sack;
	}

	/*
	 * Return if SND.UNA is not advanced and no valid SACK block
	 * is received.
	 */
	if (num_sack_blks == 0)
		return;

	FUNC10(num_sack_blks <= (TCP_MAX_SACK + 1));
	/*
	 * Sort the SACK blocks so we can update the scoreboard
	 * with just one pass. The overhead of sorting upto 4+1 elements
	 * is less than making upto 4+1 passes over the scoreboard.
	 */
	for (i = 0; i < num_sack_blks; i++) {
		for (j = i + 1; j < num_sack_blks; j++) {
			if (FUNC1(sack_blocks[i].end, sack_blocks[j].end)) {
				sack = sack_blocks[i];
				sack_blocks[i] = sack_blocks[j];
				sack_blocks[j] = sack;
			}
		}
	}
	if (FUNC6(&tp->snd_holes)) {
		/*
		 * Empty scoreboard. Need to initialize snd_fack (it may be
		 * uninitialized or have a bogus value). Scoreboard holes
		 * (from the sack blocks received) are created later below (in
		 * the logic that adds holes to the tail of the scoreboard).
		 */
		tp->snd_fack = FUNC4(tp->snd_una, th_ack);
		*newbytes_acked += (tp->snd_fack - tp->snd_una);
	}

	old_snd_fack = tp->snd_fack;
	/*
	 * In the while-loop below, incoming SACK blocks (sack_blocks[])
	 * and SACK holes (snd_holes) are traversed from their tails with
	 * just one pass in order to reduce the number of compares especially
	 * when the bandwidth-delay product is large.
	 * Note: Typically, in the first RTT of SACK recovery, the highest
	 * three or four SACK blocks with the same ack number are received.
	 * In the second RTT, if retransmitted data segments are not lost,
	 * the highest three or four SACK blocks with ack number advancing
	 * are received.
	 */
	sblkp = &sack_blocks[num_sack_blks - 1];	/* Last SACK block */
	if (FUNC3(tp->snd_fack, sblkp->start)) {
		/*
		 * The highest SACK block is beyond fack.
		 * Append new SACK hole at the tail.
		 * If the second or later highest SACK blocks are also
		 * beyond the current fack, they will be inserted by
		 * way of hole splitting in the while-loop below.
		 */
		temp = FUNC14(tp, tp->snd_fack,sblkp->start,NULL);
		if (temp != NULL) {
			tp->snd_fack = sblkp->end;
			*newbytes_acked += (sblkp->end - sblkp->start);

			/* Go to the previous sack block. */
			sblkp--;
		} else {
			/* 
			 * We failed to add a new hole based on the current 
			 * sack block.  Skip over all the sack blocks that 
			 * fall completely to the right of snd_fack and proceed
			 * to trim the scoreboard based on the remaining sack
			 * blocks. This also trims the scoreboard for th_ack 
			 * (which is sack_blocks[0]).
			 */
			while (sblkp >= sack_blocks && 
			       FUNC3(tp->snd_fack, sblkp->start))
				sblkp--;
			if (sblkp >= sack_blocks && 
			    FUNC3(tp->snd_fack, sblkp->end)) {
				*newbytes_acked += (sblkp->end - tp->snd_fack);
				tp->snd_fack = sblkp->end;
			}
		}
	} else if (FUNC3(tp->snd_fack, sblkp->end)) {
		/* fack is advanced. */
		*newbytes_acked += (sblkp->end - tp->snd_fack);
		tp->snd_fack = sblkp->end;
	}
	/* We must have at least one SACK hole in scoreboard */
	cur = FUNC7(&tp->snd_holes, sackhole_head); /* Last SACK hole */
	/*
	 * Since the incoming sack blocks are sorted, we can process them
	 * making one sweep of the scoreboard.
	 */
	while (sblkp >= sack_blocks  && cur != NULL) {
		if (FUNC0(sblkp->start, cur->end)) {
			/*
			 * SACKs data beyond the current hole.
			 * Go to the previous sack block.
			 */
			sblkp--;
			continue;
		}
		if (FUNC2(sblkp->end, cur->start)) {
			/*
			 * SACKs data before the current hole.
			 * Go to the previous hole.
			 */
			cur = FUNC8(cur, sackhole_head, scblink);
			continue;
		}
		tp->sackhint.sack_bytes_rexmit -= (cur->rxmit - cur->start);
		if (FUNC2(sblkp->start, cur->start)) {
			/* Data acks at least the beginning of hole */
			if (FUNC0(sblkp->end, cur->end)) {
				/* Acks entire hole, so delete hole */
				*newbytes_acked += (cur->end - cur->start);

				FUNC13(tp, cur,
				    cur->end, old_snd_fack);
				temp = cur;
				cur = FUNC8(cur, sackhole_head, scblink);
				FUNC15(tp, temp);
				/*
				 * The sack block may ack all or part of the next
				 * hole too, so continue onto the next hole.
				 */
				continue;
			} else {
				/* Move start of hole forward */
				*newbytes_acked += (sblkp->end - cur->start);
				FUNC13(tp, cur,
				    sblkp->end, old_snd_fack);
				cur->start = sblkp->end;
				cur->rxmit = FUNC4(cur->rxmit, cur->start);
			}
		} else {
			/* Data acks at least the end of hole */
			if (FUNC0(sblkp->end, cur->end)) {
				/* Move end of hole backward */
				*newbytes_acked += (cur->end - sblkp->start);
				FUNC13(tp, cur,
				    cur->end, old_snd_fack);
				cur->end = sblkp->start;
				cur->rxmit = FUNC5(cur->rxmit, cur->end);
			} else {
				/*
				 * ACKs some data in the middle of a hole;
				 * need to split current hole
				 */
				*newbytes_acked += (sblkp->end - sblkp->start);
				FUNC13(tp, cur,
				    sblkp->end, old_snd_fack);
				temp = FUNC14(tp, sblkp->end,
				    cur->end, cur);
				if (temp != NULL) {
					if (FUNC1(cur->rxmit, temp->rxmit)) {
						temp->rxmit = cur->rxmit;
						tp->sackhint.sack_bytes_rexmit
							+= (temp->rxmit
							    - temp->start);
					}
					cur->end = sblkp->start;
					cur->rxmit = FUNC5(cur->rxmit,
							     cur->end);
					/*
					 * Reset the rxmit_start to that of
					 * the current hole as that will
					 * help to compute the reorder
					 * window correctly
					 */
					temp->rxmit_start = cur->rxmit_start;
				}
			}
		}
		tp->sackhint.sack_bytes_rexmit += (cur->rxmit - cur->start);
		/*
		 * Testing sblkp->start against cur->start tells us whether
		 * we're done with the sack block or the sack hole.
		 * Accordingly, we advance one or the other.
		 */
		if (FUNC2(sblkp->start, cur->start))
			cur = FUNC8(cur, sackhole_head, scblink);
		else
			sblkp--;
	}
}