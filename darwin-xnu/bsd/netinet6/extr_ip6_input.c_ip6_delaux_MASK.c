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
 int /*<<< orphan*/  KERNEL_MODULE_TAG_ID ; 
 int /*<<< orphan*/  KERNEL_TAG_TYPE_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,struct m_tag*) ; 
 struct m_tag* FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct mbuf *m)
{
	struct m_tag	*tag;

	tag = FUNC1(m, KERNEL_MODULE_TAG_ID,
	    KERNEL_TAG_TYPE_INET6, NULL);
	if (tag) {
		FUNC0(m, tag);
	}
}