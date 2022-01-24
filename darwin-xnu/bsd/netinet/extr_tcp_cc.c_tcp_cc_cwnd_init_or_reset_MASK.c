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
struct tcpcb {int t_flags; int snd_cwnd; int t_maxseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CC_CWND_INIT_BYTES ; 
 int TF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int ss_fltsz ; 
 int ss_fltsz_local ; 
 scalar_t__ tcp_do_rfc3390 ; 

void
FUNC2(struct tcpcb *tp)
{
	if (tp->t_flags & TF_LOCAL) {
		tp->snd_cwnd = tp->t_maxseg * ss_fltsz_local;
	} else {
		/* initial congestion window according to RFC 3390 */
		if (tcp_do_rfc3390)
			tp->snd_cwnd = FUNC1(4 * tp->t_maxseg,
				FUNC0(2 * tp->t_maxseg, TCP_CC_CWND_INIT_BYTES));
		else
			tp->snd_cwnd = tp->t_maxseg * ss_fltsz;
	}
}