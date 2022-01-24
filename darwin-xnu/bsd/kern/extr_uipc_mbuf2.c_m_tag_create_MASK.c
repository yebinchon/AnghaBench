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
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  tags; } ;
struct mbuf {int m_flags; int m_len; scalar_t__ m_data; TYPE_1__ m_pkthdr; } ;
struct m_taghdr {int m_tag_len; scalar_t__ m_tag_cookie; int /*<<< orphan*/  m_tag_id; int /*<<< orphan*/  m_tag_type; int /*<<< orphan*/  refcnt; } ;
struct m_tag {int m_tag_len; scalar_t__ m_tag_cookie; int /*<<< orphan*/  m_tag_id; int /*<<< orphan*/  m_tag_type; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int FUNC0 (struct m_taghdr*,int) ; 
 int MLEN ; 
 int M_EXT ; 
 int M_TAGHDR ; 
 int FUNC1 (int) ; 
 scalar_t__ M_TAG_VALID_PATTERN ; 
 struct m_taghdr* FUNC2 (int /*<<< orphan*/ *) ; 
 struct m_taghdr* FUNC3 (struct m_taghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct m_taghdr*,int) ; 
 struct mbuf* FUNC6 (struct m_taghdr*) ; 
 struct m_taghdr* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  m_tag_link ; 

struct m_tag *
FUNC8(u_int32_t id, u_int16_t type, int len, int wait, struct mbuf *buf)
{
	struct m_tag *t = NULL;
	struct m_tag *p;

	if (len < 0)
		return (NULL);

	if (len + sizeof (struct m_tag) + sizeof (struct m_taghdr) > MLEN)
		return (FUNC7(id, type, len, wait));

	/*
	 * We've exhausted all external cases. Now, go through the m_tag
	 * chain and see if we can fit it in any of them.
	 * If not (t == NULL), call m_tag_alloc to store it in a new mbuf.
	 */
	p = FUNC2(&buf->m_pkthdr.tags);
	while(p != NULL) {
		/* 2KCL m_tag */
		if (FUNC1(p->m_tag_len) +
		    sizeof (struct m_taghdr) > MLEN) {
			p = FUNC3(p, m_tag_link);
			continue;
		}

		FUNC4(p->m_tag_cookie == M_TAG_VALID_PATTERN);

		struct mbuf *m = FUNC6(p);
		struct m_taghdr *hdr = (struct m_taghdr *)(void *)m->m_data;

		FUNC4(FUNC0(hdr + 1, sizeof (u_int64_t)));
		FUNC4(m->m_flags & M_TAGHDR && !(m->m_flags & M_EXT));

		/* The mbuf can store this m_tag */
		if (FUNC1(len) <= MLEN - m->m_len) {
			t = (struct m_tag *)(void *)(m->m_data + m->m_len);
			FUNC4(FUNC0(t, sizeof (u_int64_t)));
			hdr->refcnt++;
			m->m_len += FUNC1(len);
			FUNC4(m->m_len <= MLEN);
			break;
		}

		p = FUNC3(p, m_tag_link);
	}

	if (t == NULL)
		return (FUNC7(id, type, len, wait));

	t->m_tag_cookie = M_TAG_VALID_PATTERN;
	t->m_tag_type = type;
	t->m_tag_len = len;
	t->m_tag_id = id;
	if (len > 0)
		FUNC5(t + 1, len);
	return (t);
}