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
typedef  int /*<<< orphan*/  u_int ;
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; int /*<<< orphan*/ * m_dat; int /*<<< orphan*/ * m_data; } ;

/* Variables and functions */
 size_t MLEN ; 
 int FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int M_EXT ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC2 (struct mbuf*) ; 

void
FUNC3(struct mbuf *m, struct mbuf *n)
{
	while (m->m_next)
		m = m->m_next;
	while (n) {
		if ((m->m_flags & M_EXT) ||
		    m->m_data + m->m_len + n->m_len >= &m->m_dat[MLEN]) {
			/* just join the two chains */
			m->m_next = n;
			return;
		}
		/* splat the data from one into the other */
		FUNC1(FUNC0(n, caddr_t), FUNC0(m, caddr_t) + m->m_len,
		    (u_int)n->m_len);
		m->m_len += n->m_len;
		n = FUNC2(n);
	}
}