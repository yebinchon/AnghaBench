#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pseminfo {int psem_flags; int /*<<< orphan*/  psem_usecount; int /*<<< orphan*/  psem_mode; int /*<<< orphan*/  psem_gid; int /*<<< orphan*/  psem_uid; } ;
struct psemcache {int psem_flags; int /*<<< orphan*/  psem_usecount; int /*<<< orphan*/  psem_mode; int /*<<< orphan*/  psem_gid; int /*<<< orphan*/  psem_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct pseminfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SHM ; 
 int PSEM_ALLOCATED ; 
 int PSEM_DEFINED ; 
 int PSEM_INDELETE ; 
 int PSEM_REMOVED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  posix_ipc_perm ; 
 int /*<<< orphan*/  FUNC3 (struct pseminfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct pseminfo*) ; 

__attribute__((used)) static int
FUNC5(struct pseminfo *pinfo, struct psemcache *pcache)
{
	FUNC2();

	if (!pinfo || !pcache)
		return EINVAL;

	if ((pinfo->psem_flags & (PSEM_DEFINED | PSEM_ALLOCATED)) == 0)
		return EINVAL;

	if (pinfo->psem_flags & PSEM_INDELETE)
		return 0;

	FUNC0(posix_ipc_perm, pinfo->psem_uid, pinfo->psem_gid,
		  pinfo->psem_mode);

	pinfo->psem_flags |= PSEM_INDELETE;
	pinfo->psem_usecount--;

	if (!pinfo->psem_usecount) {
		FUNC4(pinfo);
		FUNC1(pinfo,M_SHM);
	} else {
		pinfo->psem_flags |= PSEM_REMOVED;
	}

	FUNC3(pcache);
	FUNC1(pcache, M_SHM);
	return 0;
}