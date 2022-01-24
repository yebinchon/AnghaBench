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
struct sockbuf {struct mbuf* sb_mb; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_RWBYTES ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sockbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockbuf*,struct mbuf*) ; 

void
FUNC4(struct sockbuf *sb)
{
	struct mbuf *m, *mn;

	m = sb->sb_mb;
	if (m) {
		sb->sb_mb = m->m_nextpkt;
		do {
			FUNC3(sb, m);
			FUNC0(m, mn);
			m = mn;
		} while (m);
	}
	FUNC1(sb);
	FUNC2(0, sb, EV_RWBYTES);
}