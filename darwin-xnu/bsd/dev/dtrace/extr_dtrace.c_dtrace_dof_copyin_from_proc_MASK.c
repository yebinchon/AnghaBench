#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_7__ {int dofh_loadsz; } ;
typedef  TYPE_1__ dof_hdr_t ;

/* Variables and functions */
 int E2BIG ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ dtrace_dof_maxsize ; 
 int /*<<< orphan*/  dtrace_lock ; 
 TYPE_1__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dof_hdr_t *
FUNC5(proc_t* p, user_addr_t uarg, int *errp)
{
	dof_hdr_t hdr, *dof;

	FUNC0(&dtrace_lock, LCK_MTX_ASSERT_NOTOWNED);

	/*
	 * First, we're going to copyin() the sizeof (dof_hdr_t).
	 */
	if (FUNC4(p, &hdr, sizeof(hdr), uarg) != KERN_SUCCESS) {
		FUNC1(NULL, "failed to copyin DOF header");
		*errp = EFAULT;
		return (NULL);
	}

	/*
	 * Now we'll allocate the entire DOF and copy it in -- provided
	 * that the length isn't outrageous.
	 */
	if (hdr.dofh_loadsz >= (uint64_t)dtrace_dof_maxsize) {
		FUNC1(&hdr, "load size exceeds maximum");
		*errp = E2BIG;
		return (NULL);
	}

	if (hdr.dofh_loadsz < sizeof (hdr)) {
		FUNC1(&hdr, "invalid load size");
		*errp = EINVAL;
		return (NULL);
	}

	dof = FUNC2(hdr.dofh_loadsz, 8, KM_SLEEP);

	if (FUNC4(p, dof, hdr.dofh_loadsz, uarg) != KERN_SUCCESS) {
		FUNC3(dof, hdr.dofh_loadsz);
		*errp = EFAULT;
		return (NULL);
	}

	return (dof);
}