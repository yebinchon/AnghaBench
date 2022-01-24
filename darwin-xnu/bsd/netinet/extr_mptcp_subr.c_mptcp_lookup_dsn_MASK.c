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
struct TYPE_3__ {struct mbuf* sb_mb; } ;
struct socket {TYPE_1__ so_snd; } ;
struct mptses {int dummy; } ;
struct TYPE_4__ {scalar_t__ mp_dsn; scalar_t__ mp_rlen; } ;
struct mbuf {struct mbuf* m_next; TYPE_2__ m_pkthdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct socket* FUNC2 (struct mptses*) ; 

__attribute__((used)) static struct mbuf *
FUNC3(struct mptses *mpte, uint64_t dsn)
{
	struct socket *mp_so = FUNC2(mpte);
	struct mbuf *m;

	m = mp_so->so_snd.sb_mb;

	while (m) {
		/* If this segment covers what we are looking for, return it. */
		if (FUNC1(m->m_pkthdr.mp_dsn, dsn) &&
		    FUNC0(m->m_pkthdr.mp_dsn + m->m_pkthdr.mp_rlen, dsn))
			break;


		/* Segment is no more in the queue */
		if (FUNC0(m->m_pkthdr.mp_dsn, dsn))
			return NULL;

		m = m->m_next;
	}

	return m;
}