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
struct m_tag {scalar_t__ m_tag_cookie; } ;

/* Variables and functions */
 scalar_t__ M_TAG_VALID_PATTERN ; 
 struct m_tag* FUNC0 (struct m_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  m_tag_link ; 

struct m_tag *
FUNC2(struct mbuf *m, struct m_tag *t)
{
#pragma unused(m)
	FUNC1(t != NULL);
	FUNC1(t->m_tag_cookie == M_TAG_VALID_PATTERN);

	return (FUNC0(t, m_tag_link));
}