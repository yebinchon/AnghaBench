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
struct sockbuf {int sb_flags; struct mbuf* sb_lastrecord; struct mbuf* sb_mb; int /*<<< orphan*/  sb_so; } ;
struct mbuf {int m_flags; int m_type; struct mbuf* m_next; struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int EJUSTRETURN ; 
#define  MT_CONTROL 129 
#define  MT_OOBDATA 128 
 int M_EOR ; 
 int M_SKIPCFIL ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*,char*) ; 
 int SB_RECV ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockbuf*,struct mbuf*,struct mbuf*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock_data_filt_flag_oob ; 

int
FUNC6(struct sockbuf *sb, struct mbuf *m0)
{
	struct mbuf *m;
	struct mbuf **mp;

	if (m0 == 0)
		return (0);

	FUNC0(sb, "sbinsertoob 1");

	if ((sb->sb_flags & SB_RECV && !(m0->m_flags & M_SKIPCFIL)) != 0) {
		int error = FUNC5(sb->sb_so, NULL, &m0, NULL,
		    sock_data_filt_flag_oob);

		FUNC0(sb, "sbinsertoob 2");

#if CONTENT_FILTER
		if (error == 0)
			error = cfil_sock_data_in(sb->sb_so, NULL, m0, NULL, 0);
#endif /* CONTENT_FILTER */

		if (error) {
			if (error != EJUSTRETURN) {
				FUNC2(m0);
			}
			return (0);
		}
	} else if (m0) {
		m0->m_flags &= ~M_SKIPCFIL;
	}

	for (mp = &sb->sb_mb; *mp; mp = &((*mp)->m_nextpkt)) {
		m = *mp;
again:
		switch (m->m_type) {

		case MT_OOBDATA:
			continue;		/* WANT next train */

		case MT_CONTROL:
			m = m->m_next;
			if (m)
				goto again;	/* inspect THIS train further */
		}
		break;
	}
	/*
	 * Put the first mbuf on the queue.
	 * Note this permits zero length records.
	 */
	FUNC3(sb, m0);
	m0->m_nextpkt = *mp;
	if (*mp == NULL) {
		/* m0 is actually the new tail */
		sb->sb_lastrecord = m0;
	}
	*mp = m0;
	m = m0->m_next;
	m0->m_next = 0;
	if (m && (m0->m_flags & M_EOR)) {
		m0->m_flags &= ~M_EOR;
		m->m_flags |= M_EOR;
	}
	FUNC4(sb, m, m0);
	FUNC0(sb, "sbinsertoob 3");
	return (1);
}