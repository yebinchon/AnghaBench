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
typedef  int u_int32_t ;
struct TYPE_2__ {int len; int /*<<< orphan*/ * pkt_hdr; } ;
struct mbuf {int m_flags; int m_data; int m_len; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int MCLBYTES ; 
 int MHLEN ; 
 int MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mbuf*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 struct mbuf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC10(struct mbuf *m0, u_int32_t off, int how)
{
	struct mbuf *m_new = NULL, *m_final = NULL;
	int progress = 0, length, pktlen;

	if (!(m0->m_flags & M_PKTHDR))
		return (m0);

	FUNC0(off < MHLEN);
	FUNC4(m0); /* Needed sanity check */

	pktlen = m0->m_pkthdr.len + off;
	if (pktlen > MHLEN)
		m_final = FUNC7(how, MT_DATA, M_PKTHDR);
	else
		m_final = FUNC8(how, MT_DATA);

	if (m_final == NULL)
		goto nospace;

	if (off > 0) {
		pktlen -= off;
		m_final->m_data += off;
	}

	/*
	 * Caller must have handled the contents pointed to by this
	 * pointer before coming here, as otherwise it will point to
	 * the original mbuf which will get freed upon success.
	 */
	FUNC0(m0->m_pkthdr.pkt_hdr == NULL);

	if (FUNC3(m_final, m0, how) == 0)
		goto nospace;

	m_new = m_final;

	while (progress < pktlen) {
		length = pktlen - progress;
		if (length > MCLBYTES)
			length = MCLBYTES;
		length -= ((m_new == m_final) ? off : 0);
		if (length < 0)
			goto nospace;

		if (m_new == NULL) {
			if (length > MLEN)
				m_new = FUNC7(how, MT_DATA, 0);
			else
				m_new = FUNC6(how, MT_DATA);
			if (m_new == NULL)
				goto nospace;
		}

		FUNC2(m0, progress, length, FUNC9(m_new, caddr_t));
		progress += length;
		m_new->m_len = length;
		if (m_new != m_final)
			FUNC1(m_final, m_new);
		m_new = NULL;
	}
	FUNC5(m0);
	m0 = m_final;
	return (m0);
nospace:
	if (m_final)
		FUNC5(m_final);
	return (NULL);
}