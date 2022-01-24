#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* p_dtrace_lazy_dofs; int /*<<< orphan*/ * p_dtrace_helpers; int /*<<< orphan*/  p_dtrace_sprlock; } ;
typedef  TYPE_1__ proc_t ;
struct TYPE_12__ {int /*<<< orphan*/  dofiod_count; } ;
typedef  TYPE_2__ dof_ioctl_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DTRACE_DOF_MODE_LAZY_OFF ; 
 int DTRACE_LAZY_DOFS_DUPLICATED ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,size_t) ; 
 scalar_t__ dtrace_dof_mode ; 
 int /*<<< orphan*/  dtrace_dof_mode_lock ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_2__* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(proc_t *parent, proc_t *child)
{
	FUNC2(&dtrace_lock, LCK_MTX_ASSERT_NOTOWNED);
	FUNC2(&parent->p_dtrace_sprlock, LCK_MTX_ASSERT_NOTOWNED);
	FUNC2(&child->p_dtrace_sprlock, LCK_MTX_ASSERT_NOTOWNED);

	FUNC8(&dtrace_dof_mode_lock);
	FUNC5(parent);

	/*
	 * We need to make sure that the transition to lazy dofs -> helpers
	 * was atomic for our parent
	 */
	FUNC0(parent->p_dtrace_lazy_dofs == NULL || parent->p_dtrace_helpers == NULL);
	/*
	 * In theory we should hold the child sprlock, but this is safe...
	 */
	FUNC0(child->p_dtrace_lazy_dofs == NULL && child->p_dtrace_helpers == NULL);

	dof_ioctl_data_t* parent_dofs = parent->p_dtrace_lazy_dofs;
	dof_ioctl_data_t* child_dofs = NULL;
	if (parent_dofs) {
		size_t parent_dofs_size = FUNC1(parent_dofs->dofiod_count);
		child_dofs = FUNC7(parent_dofs_size, KM_SLEEP);
		FUNC3(parent_dofs, child_dofs, parent_dofs_size);
	}

	FUNC6(parent);

	if (child_dofs) {
		FUNC5(child);
		child->p_dtrace_lazy_dofs = child_dofs;
		FUNC6(child);
		/**
		 * We process the DOF at this point if the mode is set to
		 * LAZY_OFF. This can happen if DTrace is still processing the
		 * DOF of other process (which can happen because the
		 * protected pager can have a huge latency)
		 * but has not processed our parent yet
		 */
		if (dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_OFF) {
			FUNC4(child);
		}
		FUNC9(&dtrace_dof_mode_lock);

		return DTRACE_LAZY_DOFS_DUPLICATED;
	}
	FUNC9(&dtrace_dof_mode_lock);

	return 0;
}