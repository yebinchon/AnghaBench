#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* p_dtrace_lazy_dofs; int /*<<< orphan*/ * p_dtrace_helpers; } ;
typedef  TYPE_1__ proc_t ;
struct TYPE_11__ {int dofiod_count; TYPE_8__* dofiod_helpers; } ;
typedef  TYPE_2__ dof_ioctl_data_t ;
typedef  int /*<<< orphan*/  dof_helper_t ;
struct TYPE_12__ {scalar_t__ dofhp_dof; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ DTRACE_DOF_MODE_LAZY_ON ; 
 scalar_t__ DTRACE_DOF_MODE_NEVER ; 
 int EACCES ; 
 int EINVAL ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_8__*,int) ; 
 scalar_t__ dtrace_dof_mode ; 
 int /*<<< orphan*/  dtrace_dof_mode_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(proc_t *p, int generation)
{
	int rval = EINVAL;

	FUNC7(&dtrace_dof_mode_lock);

	FUNC0(p->p_dtrace_lazy_dofs == NULL || p->p_dtrace_helpers == NULL);
	FUNC0(dtrace_dof_mode != DTRACE_DOF_MODE_NEVER);

	/*
	 * Any existing helpers force non-lazy behavior.
	 */
	if (dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_ON && (p->p_dtrace_helpers == NULL)) {
		FUNC3(p);

		dof_ioctl_data_t* existing_dofs = p->p_dtrace_lazy_dofs;
		
		if (existing_dofs) {		
			int index, existing_dofs_count = existing_dofs->dofiod_count;
			for (index=0; index<existing_dofs_count; index++) {
				if ((int)existing_dofs->dofiod_helpers[index].dofhp_dof == generation) {
					dof_ioctl_data_t* removed_dofs = NULL;
				
					/*
					 * If there is only 1 dof, we'll delete it and swap in NULL.
					 */
					if (existing_dofs_count > 1) {
						int removed_dofs_count = existing_dofs_count - 1;
						size_t removed_dofs_size = FUNC1(removed_dofs_count);
					
						removed_dofs = FUNC5(removed_dofs_size, KM_SLEEP);
						removed_dofs->dofiod_count = removed_dofs_count;
					
						/*
						 * copy the remaining data.
						 */
						if (index > 0) {
							FUNC2(&existing_dofs->dofiod_helpers[0],
							      &removed_dofs->dofiod_helpers[0],
							      index * sizeof(dof_helper_t));
						}
					
						if (index < existing_dofs_count-1) {
							FUNC2(&existing_dofs->dofiod_helpers[index+1],
							      &removed_dofs->dofiod_helpers[index],
							      (existing_dofs_count - index - 1) * sizeof(dof_helper_t));
						}
					}
				
					FUNC6(existing_dofs, FUNC1(existing_dofs_count));
				
					p->p_dtrace_lazy_dofs = removed_dofs;

					rval = KERN_SUCCESS;

					break;
				}
			}

#if DEBUG
			dof_ioctl_data_t* all_dofs = p->p_dtrace_lazy_dofs;
			if (all_dofs) {
				unsigned int i;
				for (i=0; i<all_dofs->dofiod_count-1; i++) {
					ASSERT(all_dofs->dofiod_helpers[i].dofhp_dof < all_dofs->dofiod_helpers[i+1].dofhp_dof);
				}
			}
#endif

		}
		FUNC4(p);
	} else {
		rval = EACCES;
	}
	
	FUNC8(&dtrace_dof_mode_lock);

	return rval;
}