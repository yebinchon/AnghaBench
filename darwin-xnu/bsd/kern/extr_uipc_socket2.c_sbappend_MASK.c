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
struct socket {int dummy; } ;
struct sockbuf {int sb_flags; TYPE_1__* sb_mbtail; struct mbuf* sb_lastrecord; struct socket* sb_so; } ;
struct mbuf {int m_flags; } ;
struct TYPE_2__ {int m_flags; } ;

/* Variables and functions */
 int EJUSTRETURN ; 
 int M_EOR ; 
 int M_SKIPCFIL ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*,char*) ; 
 int SB_DROP ; 
 int SB_RECV ; 
 int FUNC1 (struct socket*,int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int FUNC3 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockbuf*,struct mbuf*,TYPE_1__*) ; 
 int FUNC5 (struct socket*,int /*<<< orphan*/ *,struct mbuf**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(struct sockbuf *sb, struct mbuf *m)
{
	struct socket *so = sb->sb_so;

	if (m == NULL || (sb->sb_flags & SB_DROP)) {
		if (m != NULL)
			FUNC2(m);
		return (0);
	}

	FUNC0(sb, "sbappend 1");

	if (sb->sb_lastrecord != NULL && (sb->sb_mbtail->m_flags & M_EOR))
		return (FUNC3(sb, m));

	if (sb->sb_flags & SB_RECV && !(m && m->m_flags & M_SKIPCFIL)) {
		int error = FUNC5(so, NULL, &m, NULL, 0);
		FUNC0(sb, "sbappend 2");

#if CONTENT_FILTER
		if (error == 0)
			error = cfil_sock_data_in(so, NULL, m, NULL, 0);
#endif /* CONTENT_FILTER */

		if (error != 0) {
			if (error != EJUSTRETURN)
				FUNC2(m);
			return (0);
		}
	} else if (m) {
		m->m_flags &= ~M_SKIPCFIL;
	}

	/* If this is the first record, it's also the last record */
	if (sb->sb_lastrecord == NULL)
		sb->sb_lastrecord = m;

	FUNC4(sb, m, sb->sb_mbtail);
	FUNC0(sb, "sbappend 3");
	return (1);
}