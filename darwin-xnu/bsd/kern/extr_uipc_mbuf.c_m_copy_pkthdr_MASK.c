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
struct mbuf {int m_flags; int /*<<< orphan*/  m_pktdat; int /*<<< orphan*/  m_data; int /*<<< orphan*/  m_pkthdr; } ;

/* Variables and functions */
 int M_COPYFLAGS ; 
 int M_EXT ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int) ; 

void
FUNC7(struct mbuf *to, struct mbuf *from)
{
	FUNC0(from->m_flags & M_PKTHDR);

	/* Check for scratch area overflow */
	FUNC3(from);

	if (to->m_flags & M_PKTHDR) {
		/* Check for scratch area overflow */
		FUNC3(to);
		/* We will be taking over the tags of 'to' */
		FUNC5(to, NULL);
	}
	to->m_pkthdr = from->m_pkthdr;		/* especially tags */
	FUNC1(from, 0);		/* purge classifier info */
	FUNC6(from, 1);			/* purge all tags from src */
	FUNC4(from);			/* clear src scratch area */
	to->m_flags = (from->m_flags & M_COPYFLAGS) | (to->m_flags & M_EXT);
	if ((to->m_flags & M_EXT) == 0)
		to->m_data = to->m_pktdat;
	FUNC2(to);			/* setup red zone on dst */
}