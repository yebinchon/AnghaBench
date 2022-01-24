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
struct pkthdr {int pkt_flags; int /*<<< orphan*/  pkt_mpriv; } ;
struct mbuf {int m_flags; struct pkthdr m_pkthdr; } ;

/* Variables and functions */
 int M_PKTHDR ; 
 int PKTF_PRIV_GUARDED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct mbuf*,int) ; 

void
FUNC3(struct mbuf *m)
{
	struct pkthdr *pkt = &m->m_pkthdr;

	FUNC0(m->m_flags & M_PKTHDR);

	/* See comments in <rdar://problem/14040693> */
	if (pkt->pkt_flags & PKTF_PRIV_GUARDED) {
		FUNC2("Invalid attempt to modify guarded module-private "
		    "area: mbuf %p, pkt_flags 0x%x\n", m, pkt->pkt_flags);
		/* NOTREACHED */
	}

	FUNC1(&pkt->pkt_mpriv, sizeof (pkt->pkt_mpriv));
}