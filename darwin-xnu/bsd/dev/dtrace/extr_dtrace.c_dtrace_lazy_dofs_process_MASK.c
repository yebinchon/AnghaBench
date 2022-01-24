#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* p_dtrace_helpers; TYPE_3__* p_dtrace_lazy_dofs; } ;
typedef  TYPE_1__ proc_t ;
struct TYPE_15__ {int dthps_generation; } ;
typedef  TYPE_2__ dtrace_helpers_t ;
struct TYPE_16__ {unsigned int dofiod_count; TYPE_4__* dofiod_helpers; } ;
typedef  TYPE_3__ dof_ioctl_data_t ;
struct TYPE_17__ {scalar_t__ dofhp_dof; int dofhp_addr; } ;
typedef  TYPE_4__ dof_helper_t ;
typedef  int /*<<< orphan*/  dof_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DTRACE_DOF_MODE_LAZY_OFF ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ dtrace_dof_mode ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_meta_lock ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(proc_t *p) {
	/*
	 * It is possible this process may exit during our attempt to
	 * fault in the dof. We could fix this by holding locks longer,
	 * but the errors are benign.
	 */
	FUNC6(p);


	FUNC0(p->p_dtrace_lazy_dofs == NULL || p->p_dtrace_helpers == NULL);
	FUNC0(dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_OFF);

	dof_ioctl_data_t* lazy_dofs = p->p_dtrace_lazy_dofs;
	p->p_dtrace_lazy_dofs = NULL;

	FUNC7(p);
	FUNC9(&dtrace_meta_lock);
	/*
	 * Process each dof_helper_t
	 */
	if (lazy_dofs != NULL) {
		unsigned int i;
		int rval;

		for (i=0; i<lazy_dofs->dofiod_count; i++) {
			/*
			 * When loading lazy dof, we depend on the generations being sorted in ascending order.
			 */
			FUNC0(i >= (lazy_dofs->dofiod_count - 1) || lazy_dofs->dofiod_helpers[i].dofhp_dof < lazy_dofs->dofiod_helpers[i+1].dofhp_dof);

			dof_helper_t *dhp = &lazy_dofs->dofiod_helpers[i];

			/*
			 * We stored the generation in dofhp_dof. Save it, and restore the original value.
			 */
			int generation = dhp->dofhp_dof;
			dhp->dofhp_dof = dhp->dofhp_addr;

			dof_hdr_t *dof = FUNC2(p, dhp->dofhp_dof, &rval);

			if (dof != NULL) {
				dtrace_helpers_t *help;
								
				FUNC9(&dtrace_lock);
				
				/*
				 * This must be done with the dtrace_lock held
				 */
				if ((help = p->p_dtrace_helpers) == NULL)
					help = FUNC5(p);
				
				/*
				 * If the generation value has been bumped, someone snuck in
				 * when we released the dtrace lock. We have to dump this generation,
				 * there is no safe way to load it.
				 */
				if (help->dthps_generation <= generation) {
					help->dthps_generation = generation;
					
					/*
					 * dtrace_helper_slurp() takes responsibility for the dof --
					 * it may free it now or it may save it and free it later.
					 */
					if ((rval = FUNC4(p, dof, dhp)) != generation) {
						FUNC3(NULL, "returned value did not match expected generation");
					}
				}
				
				FUNC10(&dtrace_lock);
			}
		}
		FUNC10(&dtrace_meta_lock);
		FUNC8(lazy_dofs, FUNC1(lazy_dofs->dofiod_count));
	} else {
		FUNC10(&dtrace_meta_lock);
	}
}