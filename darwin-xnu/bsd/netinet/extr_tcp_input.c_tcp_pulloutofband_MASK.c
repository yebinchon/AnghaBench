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
struct tcphdr {int th_urp; } ;
struct tcpcb {char t_iobc; int /*<<< orphan*/  t_oobflags; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {int m_len; int m_flags; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int M_PKTHDR ; 
 int /*<<< orphan*/  TCPOOB_HAVEDATA ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  caddr_t ; 
 char* FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct tcpcb* FUNC3 (struct socket*) ; 

__attribute__((used)) static void
FUNC4(struct socket *so, struct tcphdr *th, struct mbuf *m, int off)
{
	int cnt = off + th->th_urp - 1;

	while (cnt >= 0) {
		if (m->m_len > cnt) {
			char *cp = FUNC1(m, caddr_t) + cnt;
			struct tcpcb *tp = FUNC3(so);

			tp->t_iobc = *cp;
			tp->t_oobflags |= TCPOOB_HAVEDATA;
			FUNC0(cp+1, cp, (unsigned)(m->m_len - cnt - 1));
			m->m_len--;
			if (m->m_flags & M_PKTHDR)
				m->m_pkthdr.len--;
			return;
		}
		cnt -= m->m_len;
		m = m->m_next;
		if (m == 0)
			break;
	}
	FUNC2("tcp_pulloutofband");
}