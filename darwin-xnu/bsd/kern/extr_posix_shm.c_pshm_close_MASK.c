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
struct pshmobj {int pshm_flags; struct pshmobj* pshmo_next; int /*<<< orphan*/  pshmo_memobject; struct pshmobj* pshm_memobjects; int /*<<< orphan*/  pshm_usecount; } ;
struct pshminfo {int pshm_flags; struct pshminfo* pshmo_next; int /*<<< orphan*/  pshmo_memobject; struct pshminfo* pshm_memobjects; int /*<<< orphan*/  pshm_usecount; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pshmobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SHM ; 
 int PSHM_ALLOCATED ; 
 int PSHM_REMOVED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pshmobj*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct pshminfo *pinfo, int dropref)
{
	int error = 0;
	struct pshmobj *pshmobj, *pshmobj_next;

	/*
	 * If we are dropping the reference we took on the cache object, don't
	 * enforce the allocation requirement.
	 */
	if ( !dropref && ((pinfo->pshm_flags & PSHM_ALLOCATED) != PSHM_ALLOCATED)) {
		return(EINVAL);
	}
#if DIAGNOSTIC
	if(!pinfo->pshm_usecount) {
		kprintf("negative usecount in pshm_close\n");
	}
#endif /* DIAGNOSTIC */
	pinfo->pshm_usecount--; /* release this fd's reference */

 	if ((pinfo->pshm_flags & PSHM_REMOVED) && !pinfo->pshm_usecount) {
#if CONFIG_MACF
		mac_posixshm_label_destroy(pinfo);
#endif
		FUNC2();
		/*
		 * If this is the last reference going away on the object,
		 * then we need to destroy the backing object.
		 */
		for (pshmobj = pinfo->pshm_memobjects;
		     pshmobj != NULL;
		     pshmobj = pshmobj_next) {
			FUNC5(pshmobj->pshmo_memobject);
			pshmobj_next = pshmobj->pshmo_next;
			FUNC0(pshmobj, M_SHM);
		}
		FUNC1();
		FUNC0(pinfo,M_SHM);
	}
	return (error);
}