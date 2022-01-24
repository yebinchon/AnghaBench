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
 struct m_tag* FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct ip6aux *
FUNC1(struct mbuf *m)
{
	struct m_tag	*tag;

	tag = FUNC0(m, KERNEL_MODULE_TAG_ID,
	    KERNEL_TAG_TYPE_INET6, NULL);

	return (tag ? (struct ip6aux *)(tag + 1) : NULL);
}