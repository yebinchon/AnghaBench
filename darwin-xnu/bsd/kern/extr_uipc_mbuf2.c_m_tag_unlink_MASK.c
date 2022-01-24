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
struct TYPE_2__ {int /*<<< orphan*/  tags; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_tag {scalar_t__ m_tag_cookie; } ;

/* Variables and functions */
 int M_PKTHDR ; 
 scalar_t__ M_TAG_VALID_PATTERN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct m_tag*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  m_tag ; 
 int /*<<< orphan*/  m_tag_link ; 

void
FUNC2(struct mbuf *m, struct m_tag *t)
{
	FUNC1(m->m_flags & M_PKTHDR);
	FUNC1(t != NULL && t->m_tag_cookie == M_TAG_VALID_PATTERN);

	FUNC0(&m->m_pkthdr.tags, t, m_tag, m_tag_link);
}