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
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  tags; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_tag {scalar_t__ m_tag_cookie; scalar_t__ m_tag_id; scalar_t__ m_tag_type; } ;

/* Variables and functions */
 int M_PKTHDR ; 
 scalar_t__ M_TAG_VALID_PATTERN ; 
 struct m_tag* FUNC0 (int /*<<< orphan*/ *) ; 
 struct m_tag* FUNC1 (struct m_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  m_tag_link ; 

struct m_tag *
FUNC3(struct mbuf *m, u_int32_t id, u_int16_t type, struct m_tag *t)
{
	struct m_tag *p;

	FUNC2(m->m_flags & M_PKTHDR);

	if (t == NULL) {
		p = FUNC0(&m->m_pkthdr.tags);
	} else {
		FUNC2(t->m_tag_cookie == M_TAG_VALID_PATTERN);
		p = FUNC1(t, m_tag_link);
	}
	while (p != NULL) {
		FUNC2(p->m_tag_cookie == M_TAG_VALID_PATTERN);
		if (p->m_tag_id == id && p->m_tag_type == type)
			return (p);
		p = FUNC1(p, m_tag_link);
	}
	return (NULL);
}