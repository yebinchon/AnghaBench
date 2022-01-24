#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* obj_next; } ;
typedef  TYPE_1__ mcache_obj_t ;
struct TYPE_13__ {int mca_uflags; int /*<<< orphan*/ * mca_uptr; } ;
typedef  TYPE_2__ mcache_audit_t ;
typedef  scalar_t__ mbuf_class_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int MB_INUSE ; 
 int MB_SCVALID ; 
 scalar_t__ MC_MBUF ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  mb_start ; 
 int /*<<< orphan*/  mbuf_mlock ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ mcltrace ; 

__attribute__((used)) static void
FUNC11(void *arg, mcache_obj_t *list, boolean_t alloc)
{
	mbuf_class_t class = (mbuf_class_t)arg;
	mcache_audit_t *mca;

	FUNC0(FUNC2(class) && !FUNC1(class));

	while (list != NULL) {
		FUNC3(mbuf_mlock);
		mca = FUNC8(class, list);

		/* Do the sanity checks */
		if (class == MC_MBUF) {
			FUNC10(mca, list, FALSE, alloc);
			FUNC0(mca->mca_uflags & MB_SCVALID);
		} else {
			FUNC9(mca, list, FUNC6(class),
			    alloc, TRUE);
			FUNC0(!(mca->mca_uflags & MB_SCVALID));
		}
		/* Record this transaction */
		if (mcltrace)
			FUNC7(mca, list, FUNC5(class), &mb_start);

		if (alloc)
			mca->mca_uflags |= MB_INUSE;
		else
			mca->mca_uflags &= ~MB_INUSE;
		/* Unpair the object (unconditionally) */
		mca->mca_uptr = NULL;
		FUNC4(mbuf_mlock);

		list = list->obj_next;
	}
}