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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tcpcb {scalar_t__ bg_ssthresh; scalar_t__ snd_ssthresh; scalar_t__ snd_cwnd; int t_maxseg; scalar_t__ t_bytes_acked; int /*<<< orphan*/  snd_wnd; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_sockets; } ;
typedef  int /*<<< orphan*/  SInt32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  volatile*) ; 
 int bg_ss_fltsz ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ tcp_cc_ledbat ; 

void
FUNC2(struct tcpcb *tp, uint16_t old_cc_index) {
#pragma unused(old_cc_index)
	uint32_t cwnd;

	if (tp->bg_ssthresh == 0 || tp->bg_ssthresh > tp->snd_ssthresh)
		tp->bg_ssthresh = tp->snd_ssthresh;

	cwnd = FUNC1(tp->snd_wnd, tp->snd_cwnd);

	if (tp->snd_cwnd > tp->bg_ssthresh)
		cwnd = cwnd / tp->t_maxseg;
	else
		cwnd = cwnd / 2 / tp->t_maxseg;

	if (cwnd < bg_ss_fltsz)
		cwnd = bg_ss_fltsz;

	tp->snd_cwnd = cwnd * tp->t_maxseg;
	tp->t_bytes_acked = 0;

	FUNC0((volatile SInt32 *)&tcp_cc_ledbat.num_sockets);
}