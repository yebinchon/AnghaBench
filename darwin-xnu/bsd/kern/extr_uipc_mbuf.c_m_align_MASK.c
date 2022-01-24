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
struct mbuf {scalar_t__ m_data; } ;

/* Variables and functions */
 int FUNC0 (struct mbuf*) ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(struct mbuf *m, int len)
{
	int adjust = 0;

	/* At this point data must point to start */
	FUNC2(m->m_data == FUNC1(m));
	FUNC2(len >= 0);
	FUNC2(len <= FUNC0(m));
	adjust = FUNC0(m) - len;
	m->m_data += adjust &~ (sizeof(long) - 1);
}