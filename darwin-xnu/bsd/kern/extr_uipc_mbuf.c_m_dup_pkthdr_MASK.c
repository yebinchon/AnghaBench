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
struct mbuf {int m_flags; int /*<<< orphan*/  m_pkthdr; int /*<<< orphan*/  m_pktdat; int /*<<< orphan*/  m_data; } ;

/* Variables and functions */
 int M_COPYFLAGS ; 
 int M_EXT ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int FUNC3 (struct mbuf*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mbuf *to, struct mbuf *from, int how)
{
	FUNC0(from->m_flags & M_PKTHDR);

	/* Check for scratch area overflow */
	FUNC2(from);

	if (to->m_flags & M_PKTHDR) {
		/* Check for scratch area overflow */
		FUNC2(to);
		/* We will be taking over the tags of 'to' */
		FUNC4(to, NULL);
	}
	to->m_flags = (from->m_flags & M_COPYFLAGS) | (to->m_flags & M_EXT);
	if ((to->m_flags & M_EXT) == 0)
		to->m_data = to->m_pktdat;
	to->m_pkthdr = from->m_pkthdr;
	FUNC1(to);			/* setup red zone on dst */
	FUNC5(to, 0);			/* preserve dst static tags */
	return (FUNC3(to, from, how));
}