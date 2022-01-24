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
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; int /*<<< orphan*/  m_type; } ;

/* Variables and functions */
 int MHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int) ; 
 int MLEN ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct mbuf*) ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 

struct mbuf *
FUNC6(struct mbuf *m, int len, int how)
{
	struct mbuf *mn;

	FUNC4(mn, how, m->m_type);
	if (mn == NULL) {
		FUNC5(m);
		return (NULL);
	}
	if (m->m_flags & M_PKTHDR) {
		FUNC2(mn, m);
		m->m_flags &= ~M_PKTHDR;
	}
	mn->m_next = m;
	m = mn;
	if (m->m_flags & M_PKTHDR) {
		FUNC3(len <= MHLEN);
		FUNC0(m, len);
	} else {
		FUNC3(len <= MLEN);
		FUNC1(m, len);
	}
	m->m_len = len;
	return (m);
}