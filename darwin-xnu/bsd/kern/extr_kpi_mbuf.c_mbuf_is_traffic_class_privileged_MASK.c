#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* mbuf_t ;
struct TYPE_4__ {int pkt_flags; int /*<<< orphan*/  pkt_svc; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int M_PKTHDR ; 
 int PKTF_PRIO_PRIVILEGED ; 

int
FUNC1(mbuf_t m)
{
	if (m == NULL || !(m->m_flags & M_PKTHDR) ||
	    !FUNC0(m->m_pkthdr.pkt_svc))
		return (0);

	return ((m->m_pkthdr.pkt_flags & PKTF_PRIO_PRIVILEGED) ? 1 : 0);
}