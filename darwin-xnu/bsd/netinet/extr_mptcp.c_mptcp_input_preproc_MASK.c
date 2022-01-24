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
struct tcphdr {int dummy; } ;
struct tcpcb {TYPE_1__* t_inpcb; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inp_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,struct mbuf*,struct tcphdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct tcpcb*,struct mbuf*,int) ; 

int
FUNC2(struct tcpcb *tp, struct mbuf *m, struct tcphdr *th,
		    int drop_hdrlen)
{
	FUNC0(tp, m, th);
	if (FUNC1(tp->t_inpcb->inp_socket, tp, m,
	    drop_hdrlen) != 0)
		return -1;
	return 0;
}