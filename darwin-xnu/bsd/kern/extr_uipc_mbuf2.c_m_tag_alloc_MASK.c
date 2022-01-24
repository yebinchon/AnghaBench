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
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct mbuf {scalar_t__ m_data; scalar_t__ m_len; int /*<<< orphan*/  m_flags; } ;
struct m_taghdr {int refcnt; int m_tag_len; int /*<<< orphan*/  m_tag_id; int /*<<< orphan*/  m_tag_type; int /*<<< orphan*/  m_tag_cookie; } ;
struct m_tag {int refcnt; int m_tag_len; int /*<<< orphan*/  m_tag_id; int /*<<< orphan*/  m_tag_type; int /*<<< orphan*/  m_tag_cookie; } ;

/* Variables and functions */
 int FUNC0 (struct m_taghdr*,int) ; 
 int MCLBYTES ; 
 scalar_t__ MLEN ; 
 int /*<<< orphan*/  MT_TAG ; 
 int /*<<< orphan*/  M_TAGHDR ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  M_TAG_VALID_PATTERN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct m_taghdr*,int) ; 
 struct mbuf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

struct m_tag *
FUNC6(u_int32_t id, u_int16_t type, int len, int wait)
{
	struct m_tag *t;

	if (len < 0)
		return (NULL);

        if (FUNC1(len) + sizeof (struct m_taghdr) <= MLEN) {
		struct mbuf *m = FUNC4(wait, MT_TAG);
		struct m_taghdr *hdr;

		if (m == NULL)
			return (NULL);

		m->m_flags |= M_TAGHDR;

		hdr = (struct m_taghdr *)(void *)m->m_data;
		FUNC2(FUNC0(hdr + 1, sizeof (u_int64_t)));
		hdr->refcnt = 1;
		m->m_len += sizeof (struct m_taghdr);
		t = (struct m_tag *)(void *)(m->m_data + m->m_len);
		FUNC2(FUNC0(t, sizeof (u_int64_t)));
		m->m_len += FUNC1(len);
		FUNC2(m->m_len <= MLEN);
        } else if (len + sizeof (struct m_tag) <= MCLBYTES) {
		t = (struct m_tag *)(void *)FUNC5(wait);
        } else {
                t = NULL;
	}

	if (t == NULL)
		return (NULL);

	FUNC2(FUNC0(t, sizeof (u_int64_t)));
	t->m_tag_cookie = M_TAG_VALID_PATTERN;
	t->m_tag_type = type;
	t->m_tag_len = len;
	t->m_tag_id = id;
	if (len > 0)
		FUNC3(t + 1, len);
	return (t);
}