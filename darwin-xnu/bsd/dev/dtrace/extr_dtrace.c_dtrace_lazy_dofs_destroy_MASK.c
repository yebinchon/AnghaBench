#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_dtrace_lazy_dofs; int /*<<< orphan*/ * p_dtrace_helpers; } ;
typedef  TYPE_1__ proc_t ;
struct TYPE_8__ {int /*<<< orphan*/  dofiod_count; } ;
typedef  TYPE_2__ dof_ioctl_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtrace_dof_mode_lock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(proc_t *p)
{
	FUNC5(&dtrace_dof_mode_lock);
	FUNC2(p);
	
	FUNC0(p->p_dtrace_lazy_dofs == NULL || p->p_dtrace_helpers == NULL);

	dof_ioctl_data_t* lazy_dofs = p->p_dtrace_lazy_dofs;
	p->p_dtrace_lazy_dofs = NULL;

	FUNC3(p);
	FUNC6(&dtrace_dof_mode_lock);

	if (lazy_dofs) {
		FUNC4(lazy_dofs, FUNC1(lazy_dofs->dofiod_count));
	}
}