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
struct sockbuf {struct mbuf* sb_mb; struct mbuf* sb_lastrecord; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void
FUNC3(struct sockbuf *sb, const char *where)
{
	struct mbuf *m = sb->sb_mb;

	while (m && m->m_nextpkt)
		m = m->m_nextpkt;

	if (m != sb->sb_lastrecord) {
		FUNC2("sblastrecordchk: mb 0x%llx lastrecord 0x%llx "
		    "last 0x%llx\n",
		    (uint64_t)FUNC0(sb->sb_mb),
		    (uint64_t)FUNC0(sb->sb_lastrecord),
		    (uint64_t)FUNC0(m));
		FUNC2("packet chain:\n");
		for (m = sb->sb_mb; m != NULL; m = m->m_nextpkt)
			FUNC2("\t0x%llx\n", (uint64_t)FUNC0(m));
		FUNC1("sblastrecordchk from %s", where);
	}
}