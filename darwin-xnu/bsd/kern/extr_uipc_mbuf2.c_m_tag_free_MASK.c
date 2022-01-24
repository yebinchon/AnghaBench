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
struct mbuf {int m_flags; scalar_t__ m_data; } ;
struct m_taghdr {scalar_t__ refcnt; } ;
struct m_tag {scalar_t__ m_tag_id; scalar_t__ m_tag_type; scalar_t__ m_tag_cookie; int /*<<< orphan*/  m_tag_len; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int FUNC0 (struct m_taghdr*,int) ; 
 scalar_t__ KERNEL_MODULE_TAG_ID ; 
 scalar_t__ KERNEL_TAG_TYPE_MACLABEL ; 
 scalar_t__ MLEN ; 
 int M_TAGHDR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TAG_FREE_PATTERN ; 
 scalar_t__ M_TAG_VALID_PATTERN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mbuf* FUNC3 (struct m_tag*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct m_tag*) ; 

void
FUNC7(struct m_tag *t)
{
#if CONFIG_MACF_NET
	if (t != NULL && 
	    t->m_tag_id   == KERNEL_MODULE_TAG_ID &&
	    t->m_tag_type == KERNEL_TAG_TYPE_MACLABEL)
		mac_mbuf_tag_destroy(t);
#endif
	if (t == NULL)
		return;

	FUNC2(t->m_tag_cookie == M_TAG_VALID_PATTERN);

	if (FUNC1(t->m_tag_len) + sizeof (struct m_taghdr) <= MLEN) {
		struct mbuf * m = FUNC3(t);
		FUNC2(m->m_flags & M_TAGHDR);
		struct m_taghdr *hdr = (struct m_taghdr *)(void *)m->m_data;

		FUNC2(FUNC0(hdr + 1, sizeof (u_int64_t)));

		/* No other tags in this mbuf */
		if(--hdr->refcnt == 0) {
			FUNC4(m);
			return;
		}

		/* Pattern-fill the header */
		u_int64_t *fill_ptr = (u_int64_t *)t;
		u_int64_t *end_ptr = (u_int64_t *)(t + 1);
		while (fill_ptr < end_ptr) {
			*fill_ptr = M_TAG_FREE_PATTERN;
			fill_ptr++;
		}
	} else {
		FUNC5((caddr_t)t);
	}
}