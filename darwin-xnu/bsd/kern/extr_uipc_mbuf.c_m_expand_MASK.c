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
struct mbuf {unsigned int m_len; int m_flags; int /*<<< orphan*/  m_ext; struct mbuf* m_next; void* m_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (uintptr_t,unsigned int) ; 
 int FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_DONTWAIT ; 
 int M_EXT ; 
 uintptr_t FUNC2 (uintptr_t,unsigned int) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 

__attribute__((used)) static struct mbuf *
FUNC7(struct mbuf *m, struct mbuf **last)
{
	struct mbuf *top = NULL;
	struct mbuf **nm = &top;
	uintptr_t data0, data;
	unsigned int len0, len;

	FUNC3(FUNC1(m));
	FUNC3(m->m_next == NULL);
	data0 = (uintptr_t)m->m_data;
	len0 = m->m_len;
	*last = top;

	for (;;) {
		struct mbuf *n;

		data = data0;
		if (FUNC0(data, PAGE_SIZE) && len0 > PAGE_SIZE)
			len = PAGE_SIZE;
		else if (!FUNC0(data, PAGE_SIZE) &&
		    FUNC2(data, PAGE_SIZE) < (data + len0))
			len = FUNC2(data, PAGE_SIZE) - data;
		else
			len = len0;

		FUNC3(len > 0);
		FUNC3(m->m_flags & M_EXT);
		m->m_data = (void *)data;
		m->m_len = len;

		*nm = *last = m;
		nm = &m->m_next;
		m->m_next = NULL;

		data0 += len;
		len0 -= len;
		if (len0 == 0)
			break;

		n = FUNC4(M_DONTWAIT, MT_DATA);
		if (n == NULL) {
			FUNC5(top);
			top = *last = NULL;
			break;
		}

		n->m_ext = m->m_ext;
		FUNC6(m);
		n->m_flags |= M_EXT;
		m = n;
	}
	return (top);
}