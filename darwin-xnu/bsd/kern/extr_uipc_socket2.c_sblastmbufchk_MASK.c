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
typedef  int /*<<< orphan*/  uint64_t ;
struct sockbuf {struct mbuf* sb_mb; struct mbuf* sb_mbtail; } ;
struct mbuf {struct mbuf* m_next; struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void
FUNC3(struct sockbuf *sb, const char *where)
{
	struct mbuf *m = sb->sb_mb;
	struct mbuf *n;

	while (m && m->m_nextpkt)
		m = m->m_nextpkt;

	while (m && m->m_next)
		m = m->m_next;

	if (m != sb->sb_mbtail) {
		FUNC2("sblastmbufchk: mb 0x%llx mbtail 0x%llx last 0x%llx\n",
		    (uint64_t)FUNC0(sb->sb_mb),
		    (uint64_t)FUNC0(sb->sb_mbtail),
		    (uint64_t)FUNC0(m));
		FUNC2("packet tree:\n");
		for (m = sb->sb_mb; m != NULL; m = m->m_nextpkt) {
			FUNC2("\t");
			for (n = m; n != NULL; n = n->m_next)
				FUNC2("0x%llx ",
				    (uint64_t)FUNC0(n));
			FUNC2("\n");
		}
		FUNC1("sblastmbufchk from %s", where);
	}
}