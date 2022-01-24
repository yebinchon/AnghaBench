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
struct TYPE_2__ {int len; int /*<<< orphan*/  rcvif; } ;
struct mbuf {unsigned int m_len; int m_flags; struct mbuf* m_next; scalar_t__ m_data; int /*<<< orphan*/  m_ext; int /*<<< orphan*/  m_type; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 unsigned int MHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,unsigned int) ; 
 unsigned int MLEN ; 
 scalar_t__ FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,unsigned int) ; 
 int M_EXT ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 struct mbuf* FUNC9 (struct mbuf*,unsigned int,int) ; 

__attribute__((used)) static struct mbuf *
FUNC10(struct mbuf *m0, int len0, int wait, int copyhdr)
{
	struct mbuf *m, *n;
	unsigned len = len0, remain;

	/*
	 * First iterate to the mbuf which contains the first byte of
	 * data at offset len0
	 */
	for (m = m0; m && len > m->m_len; m = m->m_next)
		len -= m->m_len;
	if (m == NULL)
		return (NULL);
	/*
	 * len effectively is now the offset in the current
	 * mbuf where we have to perform split.
	 *
	 * remain becomes the tail length.
	 * Note that len can also be == m->m_len
	 */
	remain = m->m_len - len;

	/*
	 * If current mbuf len contains the entire remaining offset len,
	 * just make the second mbuf chain pointing to next mbuf onwards
	 * and return after making necessary adjustments
	 */
	if (copyhdr && (m0->m_flags & M_PKTHDR) && remain == 0) {
		FUNC5(n, wait, m0->m_type);
		if (n == NULL)
			return (NULL);
		n->m_next = m->m_next;
		m->m_next = NULL;
		n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
		n->m_pkthdr.len = m0->m_pkthdr.len - len0;
		m0->m_pkthdr.len = len0;
		return (n);
	} if (copyhdr && (m0->m_flags & M_PKTHDR)) {
		FUNC5(n, wait, m0->m_type);
		if (n == NULL)
			return (NULL);
		n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
		n->m_pkthdr.len = m0->m_pkthdr.len - len0;
		m0->m_pkthdr.len = len0;

		/*
		 * If current points to external storage
		 * then it can be shared by making last mbuf
		 * of head chain and first mbuf of current chain
		 * pointing to different data offsets
		 */
		if (m->m_flags & M_EXT)
			goto extpacket;
		if (remain > MHLEN) {
			/* m can't be the lead packet */
			FUNC0(n, 0);
			n->m_next = FUNC9(m, len, wait);
			if (n->m_next == NULL) {
				(void) FUNC7(n);
				return (NULL);
			} else
				return (n);
		} else
			FUNC0(n, remain);
	} else if (remain == 0) {
		n = m->m_next;
		m->m_next = NULL;
		return (n);
	} else {
		FUNC4(n, wait, m->m_type);
		if (n == NULL)
			return (NULL);

		if ((m->m_flags & M_EXT) == 0) {
			FUNC3(remain <= MLEN);
			FUNC2(n, remain);
		}
	}
extpacket:
	if (m->m_flags & M_EXT) {
		n->m_flags |= M_EXT;
		n->m_ext = m->m_ext;
		FUNC8(m);
		n->m_data = m->m_data + len;
	} else {
		FUNC6(FUNC1(m, caddr_t) + len, FUNC1(n, caddr_t), remain);
	}
	n->m_len = remain;
	m->m_len = len;
	n->m_next = m->m_next;
	m->m_next = NULL;
	return (n);
}