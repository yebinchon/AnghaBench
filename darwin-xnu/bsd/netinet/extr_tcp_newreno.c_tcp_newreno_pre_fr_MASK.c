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
typedef  int uint32_t ;
struct tcpcb {int t_maxseg; int snd_ssthresh; int /*<<< orphan*/  snd_cwnd; int /*<<< orphan*/  snd_wnd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 

void
FUNC2(struct tcpcb *tp) {

	uint32_t win;

	win = FUNC0(tp->snd_wnd, tp->snd_cwnd) / 
		2 / tp->t_maxseg;
	if ( win < 2 )
		win = 2;
	tp->snd_ssthresh = win * tp->t_maxseg; 
	FUNC1(tp);

}