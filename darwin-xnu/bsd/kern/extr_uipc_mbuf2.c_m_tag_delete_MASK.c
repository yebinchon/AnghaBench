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
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_tag*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct m_tag*) ; 

void
FUNC2(struct mbuf *m, struct m_tag *t)
{
	FUNC1(m, t);
	FUNC0(t);
}