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
struct m_tag {scalar_t__ m_tag_id; scalar_t__ m_tag_type; int /*<<< orphan*/  m_tag_len; } ;

/* Variables and functions */
 scalar_t__ KERNEL_MODULE_TAG_ID ; 
 scalar_t__ KERNEL_TAG_TYPE_MACLABEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m_tag*,struct m_tag*,int /*<<< orphan*/ ) ; 
 struct m_tag* FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct m_tag*) ; 
 int /*<<< orphan*/  FUNC4 (struct m_tag*,struct m_tag*) ; 
 scalar_t__ FUNC5 (struct m_tag*,int) ; 

struct m_tag *
FUNC6(struct m_tag *t, int how)
{
	struct m_tag *p;

	FUNC0(t != NULL);

	p = FUNC2(t->m_tag_id, t->m_tag_type, t->m_tag_len, how);
	if (p == NULL)
		return (NULL);
#if CONFIG_MACF_NET
	/*
	 * XXXMAC: we should probably pass off the initialization, and
	 * copying here?  can we hid that KERNEL_TAG_TYPE_MACLABEL is
	 * special from the mbuf code?
	 */
	if (t != NULL &&
	    t->m_tag_id   == KERNEL_MODULE_TAG_ID &&
	    t->m_tag_type == KERNEL_TAG_TYPE_MACLABEL) {
		if (mac_mbuf_tag_init(p, how) != 0) {
			m_tag_free(p);
			return (NULL);
		}
		mac_mbuf_tag_copy(t, p);
	} else
#endif
	FUNC1(t + 1, p + 1, t->m_tag_len); /* Copy the data */
	return (p);
}