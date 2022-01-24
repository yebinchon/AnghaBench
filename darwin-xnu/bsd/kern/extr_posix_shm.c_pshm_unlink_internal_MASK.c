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
struct pshmcache {int pshm_flags; struct pshmcache* pshmo_next; int /*<<< orphan*/  pshmo_memobject; struct pshmcache* pshm_memobjects; int /*<<< orphan*/  pshm_usecount; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pshmobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SHM ; 
 int PSHM_ALLOCATED ; 
 int PSHM_DEFINED ; 
 int PSHM_INDELETE ; 
 int PSHM_REMOVED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pshmobj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pshmobj*) ; 

__attribute__((used)) static int
FUNC5(struct pshminfo *pinfo, struct pshmcache *pcache)
{
	struct pshmobj *pshmobj, *pshmobj_next;

	FUNC1();

	if (!pinfo || !pcache)
		return EINVAL;

	if ((pinfo->pshm_flags & (PSHM_DEFINED | PSHM_ALLOCATED)) == 0)
		return EINVAL;

	if (pinfo->pshm_flags & PSHM_INDELETE)
		return 0;

	pinfo->pshm_flags |= PSHM_INDELETE;
	pinfo->pshm_usecount--;

	FUNC4(pcache);
	pinfo->pshm_flags |= PSHM_REMOVED;

	/* release the existence reference */
	if (!pinfo->pshm_usecount) {
#if CONFIG_MACF
		mac_posixshm_label_destroy(pinfo);
#endif
		/*
		 * If this is the last reference going away on the object,
		 * then we need to destroy the backing object.  The name
		 * has an implied but uncounted reference on the object,
		 * once it's created, since it's used as a rendezvous, and
		 * therefore may be subsequently reopened.
		 */
		for (pshmobj = pinfo->pshm_memobjects;
		     pshmobj != NULL;
		     pshmobj = pshmobj_next) {
			FUNC3(pshmobj->pshmo_memobject);
			pshmobj_next = pshmobj->pshmo_next;
			FUNC0(pshmobj, M_SHM);
		}
		FUNC0(pinfo,M_SHM);
	}

	FUNC0(pcache, M_SHM);

	return 0;
}