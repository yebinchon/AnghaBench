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
struct ip6aux {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_MODULE_TAG_ID ; 
 int /*<<< orphan*/  KERNEL_TAG_TYPE_INET6 ; 
 int /*<<< orphan*/  M_DONTWAIT ; 
 struct m_tag* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mbuf*) ; 
 struct m_tag* FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct m_tag*) ; 

struct ip6aux *
FUNC3(struct mbuf *m)
{
	struct m_tag		*tag;

	/* Check if one is already allocated */
	tag = FUNC1(m, KERNEL_MODULE_TAG_ID,
	    KERNEL_TAG_TYPE_INET6, NULL);
	if (tag == NULL) {
		/* Allocate a tag */
		tag = FUNC0(KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_INET6,
		    sizeof (struct ip6aux), M_DONTWAIT, m);

		/* Attach it to the mbuf */
		if (tag) {
			FUNC2(m, tag);
		}
	}

	return (tag ? (struct ip6aux *)(tag + 1) : NULL);
}