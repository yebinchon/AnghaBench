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
struct mbuf {int m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EXTF_READONLY ; 
 int FUNC1 (struct mbuf*) ; 
 int M_EXT ; 
 int /*<<< orphan*/ * FUNC2 (struct mbuf*) ; 

int
FUNC3(struct mbuf *m)
{
	if (!(m->m_flags & M_EXT))
		return (0);

	FUNC0(FUNC2(m) != NULL);

	return ((FUNC1(m) & EXTF_READONLY) ? 1 : 0);
}