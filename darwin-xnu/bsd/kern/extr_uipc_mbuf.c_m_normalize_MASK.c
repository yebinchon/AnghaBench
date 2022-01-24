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
struct mbuf {struct mbuf* m_next; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct mbuf* FUNC2 (struct mbuf*,struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  mb_normalized ; 

struct mbuf *
FUNC4(struct mbuf *m)
{
	struct mbuf *top = NULL;
	struct mbuf **nm = &top;
	boolean_t expanded = FALSE;

	while (m != NULL) {
		struct mbuf *n;

		n = m->m_next;
		m->m_next = NULL;

		/* Does the data cross one or more page boundaries? */
		if (FUNC0(m)) {
			struct mbuf *last;
			if ((m = FUNC2(m, &last)) == NULL) {
				FUNC3(n);
				FUNC3(top);
				top = NULL;
				break;
			}
			*nm = m;
			nm = &last->m_next;
			expanded = TRUE;
		} else {
			*nm = m;
			nm = &m->m_next;
		}
		m = n;
	}
	if (expanded)
		FUNC1(&mb_normalized, 1);
	return (top);
}