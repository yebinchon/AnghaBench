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
struct encaptabtag {int /*<<< orphan*/  arg; } ;
struct encaptab {int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_MODULE_TAG_ID ; 
 int /*<<< orphan*/  KERNEL_TAG_TYPE_ENCAP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct m_tag* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct m_tag*) ; 

__attribute__((used)) static void
FUNC2(
	struct mbuf *m,
	const struct encaptab *ep)
{
	struct m_tag	*tag;
	struct encaptabtag *et;
	
	tag = FUNC0(KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_ENCAP,
					  sizeof(struct encaptabtag), M_WAITOK, m);
	
	if (tag != NULL) {
		et = (struct encaptabtag*)(tag + 1);
		et->arg = ep->arg;
		FUNC1(m, tag);
	}
}