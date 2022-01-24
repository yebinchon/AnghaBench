#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct m_tag {int dummy; } ;
typedef  TYPE_1__* mbuf_t ;
struct TYPE_5__ {int m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_MODULE_TAG_ID ; 
 int /*<<< orphan*/  KERNEL_TAG_TYPE_DRVAUX ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct m_tag*) ; 
 struct m_tag* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(mbuf_t mbuf)
{
	struct m_tag *tag;

	if (mbuf == NULL || !(mbuf->m_flags & M_PKTHDR))
		return;

	if ((tag = FUNC1(mbuf, KERNEL_MODULE_TAG_ID,
	    KERNEL_TAG_TYPE_DRVAUX, NULL)) != NULL)
		FUNC0(mbuf, tag);
}