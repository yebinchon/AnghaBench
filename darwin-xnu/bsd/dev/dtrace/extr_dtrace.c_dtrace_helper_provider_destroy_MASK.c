#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dofhp_dof; } ;
struct TYPE_6__ {scalar_t__ dthp_ref; TYPE_1__ dthp_prov; } ;
typedef  TYPE_2__ dtrace_helper_provider_t ;
typedef  int /*<<< orphan*/  dof_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(dtrace_helper_provider_t *hprov)
{
	FUNC2(&dtrace_lock);

	if (--hprov->dthp_ref == 0) {
		dof_hdr_t *dof;
		FUNC3(&dtrace_lock);
		dof = (dof_hdr_t *)(uintptr_t)hprov->dthp_prov.dofhp_dof;
		FUNC0(dof);
		FUNC1(hprov, sizeof (dtrace_helper_provider_t));
	} else {
		FUNC3(&dtrace_lock);
	}
}