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
struct mbuf {int m_len; int m_data; int /*<<< orphan*/ * m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_DONTWAIT ; 
 int FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static struct mbuf *
FUNC5(
			   int l)
{
	struct mbuf *m = NULL, *n;
	int len, t;
	
	len = l;
	while (len > 0) {
		FUNC1(n, M_DONTWAIT, MT_DATA);
		if (n && len > MLEN)
			FUNC0(n, M_DONTWAIT);
		if (!n) {
			FUNC4(m);
			return NULL;
		}
		
		n->m_next = NULL;
		n->m_len = 0;
		n->m_len = FUNC2(n);
		/* use the bottom of mbuf, hoping we can prepend afterwards */
		if (n->m_len > len) {
			t = (n->m_len - len) & ~(sizeof(long) - 1);
			n->m_data += t;
			n->m_len = len;
		}
		
		len -= n->m_len;
		
		if (m)
			FUNC3(m, n);
		else
			m = n;
	}
	
	return m;
}