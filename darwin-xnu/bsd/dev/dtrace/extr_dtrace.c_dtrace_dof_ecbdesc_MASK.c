#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dtrace_vstate_t ;
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_predicate_t ;
struct TYPE_13__ {int /*<<< orphan*/ * dtpdd_predicate; } ;
struct TYPE_14__ {int /*<<< orphan*/ * dted_action; TYPE_1__ dted_pred; int /*<<< orphan*/  dted_probe; int /*<<< orphan*/  dted_uarg; } ;
typedef  TYPE_2__ dtrace_ecbdesc_t ;
struct TYPE_15__ {int dofs_size; int dofs_align; scalar_t__ dofs_offset; } ;
typedef  TYPE_3__ dof_sec_t ;
typedef  int /*<<< orphan*/  dof_hdr_t ;
struct TYPE_16__ {scalar_t__ dofe_probes; scalar_t__ dofe_pred; scalar_t__ dofe_actions; int /*<<< orphan*/  dofe_uarg; } ;
typedef  TYPE_4__ dof_ecbdesc_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 scalar_t__ DOF_SECIDX_NONE ; 
 int /*<<< orphan*/  DOF_SECT_ACTDESC ; 
 int /*<<< orphan*/  DOF_SECT_DIFOHDR ; 
 int /*<<< orphan*/  DOF_SECT_PROBEDESC ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dtrace_ecbdesc_t *
FUNC8(dof_hdr_t *dof, dof_sec_t *sec, dtrace_vstate_t *vstate,
    cred_t *cr)
{
	dtrace_ecbdesc_t *ep;
	dof_ecbdesc_t *ecb;
	dtrace_probedesc_t *desc;
	dtrace_predicate_t *pred = NULL;

	if (sec->dofs_size < sizeof (dof_ecbdesc_t)) {
		FUNC1(dof, "truncated ECB description");
		return (NULL);
	}

	if (sec->dofs_align != sizeof (uint64_t)) {
		FUNC1(dof, "bad alignment in ECB description");
		return (NULL);
	}

	ecb = (dof_ecbdesc_t *)((uintptr_t)dof + (uintptr_t)sec->dofs_offset);
	sec = FUNC4(dof, DOF_SECT_PROBEDESC, ecb->dofe_probes);

	if (sec == NULL)
		return (NULL);

	ep = FUNC7(sizeof (dtrace_ecbdesc_t), KM_SLEEP);
	ep->dted_uarg = ecb->dofe_uarg;
	desc = &ep->dted_probe;

	if (FUNC3(dof, sec, desc) == NULL)
		goto err;

	if (ecb->dofe_pred != DOF_SECIDX_NONE) {
		if ((sec = FUNC4(dof,
		    DOF_SECT_DIFOHDR, ecb->dofe_pred)) == NULL)
			goto err;

		if ((pred = FUNC2(dof, sec, vstate, cr)) == NULL)
			goto err;

		ep->dted_pred.dtpdd_predicate = pred;
	}

	if (ecb->dofe_actions != DOF_SECIDX_NONE) {
		if ((sec = FUNC4(dof,
		    DOF_SECT_ACTDESC, ecb->dofe_actions)) == NULL)
			goto err;

		ep->dted_action = FUNC0(dof, sec, vstate, cr);

		if (ep->dted_action == NULL)
			goto err;
	}

	return (ep);

err:
	if (pred != NULL)
		FUNC5(pred, vstate);
	FUNC6(ep, sizeof (dtrace_ecbdesc_t));
	return (NULL);
}