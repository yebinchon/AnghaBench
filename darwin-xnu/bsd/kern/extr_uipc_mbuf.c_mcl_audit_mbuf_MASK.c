#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* obj_next; } ;
typedef  TYPE_1__ mcache_obj_t ;
struct TYPE_10__ {scalar_t__ mca_contents_size; int /*<<< orphan*/ * mca_contents; } ;
typedef  TYPE_2__ mcache_audit_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ AUDIT_CONTENTS_SIZE ; 
 int /*<<< orphan*/  MCACHE_FREE_PATTERN ; 
 int /*<<< orphan*/  MC_MBUF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ mclverify ; 

__attribute__((used)) static void
FUNC7(mcache_audit_t *mca, void *addr, boolean_t composite,
    boolean_t alloc)
{
	struct mbuf *m = addr;
	mcache_obj_t *next = ((mcache_obj_t *)m)->obj_next;

	FUNC0(mca->mca_contents != NULL &&
	    mca->mca_contents_size == AUDIT_CONTENTS_SIZE);

	if (mclverify)
		FUNC6(next, mca);

	if (!alloc) {
		/* Save constructed mbuf fields */
		FUNC5(m, mca);
		if (mclverify) {
			FUNC3(MCACHE_FREE_PATTERN, m,
			    FUNC1(MC_MBUF));
		}
		((mcache_obj_t *)m)->obj_next = next;
		return;
	}

	/* Check if the buffer has been corrupted while in freelist */
	if (mclverify) {
		FUNC2(mca, addr, 0, FUNC1(MC_MBUF));
	}
	/* Restore constructed mbuf fields */
	FUNC4(m, mca, composite);
}