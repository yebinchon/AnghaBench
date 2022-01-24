#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
struct TYPE_6__ {unsigned int dofh_loadsz; } ;
typedef  TYPE_1__ dof_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_1__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ dtrace_dof_maxsize ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* FUNC5 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dof_hdr_t *
FUNC6(const char *name)
{
	unsigned int len = 0;
	dof_hdr_t *dof;

	if (FUNC4() && !FUNC1()) {
		return NULL;
	}

	if (!FUNC0(name, NULL, &len)) {
		return NULL;
	}

	dof = FUNC5(len, 8, KM_SLEEP);

	if (!FUNC0(name, dof, &len)) {
		FUNC2(dof);
		FUNC3(NULL, "unreadable DOF");
		return NULL;
	}

	if (len < sizeof (dof_hdr_t)) {
		FUNC2(dof);
		FUNC3(NULL, "truncated header");
		return (NULL);
	}

	if (len < dof->dofh_loadsz) {
		FUNC2(dof);
		FUNC3(NULL, "truncated DOF");
		return (NULL);
	}

	if (len != dof->dofh_loadsz) {
		FUNC2(dof);
		FUNC3(NULL, "invalid DOF size");
		return (NULL);
	}

	if (dof->dofh_loadsz >= (uint64_t)dtrace_dof_maxsize) {
		FUNC2(dof);
		FUNC3(NULL, "oversized DOF");
		return (NULL);
	}

	return (dof);
}