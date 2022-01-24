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
struct TYPE_2__ {int /*<<< orphan*/  pkt_ifainfo; int /*<<< orphan*/  pkt_svc; int /*<<< orphan*/  pkt_flags; int /*<<< orphan*/  pkt_flowid; int /*<<< orphan*/  pkt_flowsrc; int /*<<< orphan*/  pkt_proto; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct mbuf *to, struct mbuf *from)
{
	FUNC0(to->m_flags & M_PKTHDR);
	FUNC0(from->m_flags & M_PKTHDR);

	to->m_pkthdr.pkt_proto = from->m_pkthdr.pkt_proto;
	to->m_pkthdr.pkt_flowsrc = from->m_pkthdr.pkt_flowsrc;
	to->m_pkthdr.pkt_flowid = from->m_pkthdr.pkt_flowid;
	to->m_pkthdr.pkt_flags = from->m_pkthdr.pkt_flags;
	(void) FUNC1(to, from->m_pkthdr.pkt_svc);
	to->m_pkthdr.pkt_ifainfo  = from->m_pkthdr.pkt_ifainfo;
}