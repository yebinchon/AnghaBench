#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct tcpcb {TYPE_1__* t_inpcb; int /*<<< orphan*/  t_mpflags; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tcps_mp_badcsum; } ;
struct TYPE_3__ {int /*<<< orphan*/  inp_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMPF_SND_MPFAIL ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 scalar_t__ FUNC1 (struct tcpcb*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ tcpstat ; 

int
FUNC3(struct tcpcb *tp, struct mbuf *m, uint64_t dsn,
		    uint32_t sseq, uint16_t dlen, uint16_t csum, uint16_t dfin)
{
	uint16_t mptcp_csum;

	mptcp_csum = FUNC1(tp, m, dsn, sseq, dlen, csum, dfin);
	if (mptcp_csum) {
		tp->t_mpflags |= TMPF_SND_MPFAIL;
		FUNC2(tp->t_inpcb->inp_socket);
		FUNC0(m);
		tcpstat.tcps_mp_badcsum++;
		return (-1);
	}
	return (0);
}