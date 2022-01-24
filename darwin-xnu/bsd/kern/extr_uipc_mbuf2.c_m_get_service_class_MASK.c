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
struct TYPE_2__ {int /*<<< orphan*/  pkt_svc; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  mbuf_svc_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  MBUF_SC_BE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

mbuf_svc_class_t
FUNC2(struct mbuf *m)
{
	mbuf_svc_class_t sc;

	FUNC1(m->m_flags & M_PKTHDR);

	if (FUNC0(m->m_pkthdr.pkt_svc))
		sc = m->m_pkthdr.pkt_svc;
	else
		sc = MBUF_SC_BE;

	return (sc);
}