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
struct vinfo_stat {int /*<<< orphan*/  vst_size; int /*<<< orphan*/  vst_gid; int /*<<< orphan*/  vst_uid; int /*<<< orphan*/  vst_mode; } ;
struct psemnode {struct pseminfo* pinfo; } ;
struct pseminfo {int psem_flags; int /*<<< orphan*/ * psem_name; int /*<<< orphan*/  psem_usecount; int /*<<< orphan*/  psem_gid; int /*<<< orphan*/  psem_uid; int /*<<< orphan*/  psem_mode; } ;
struct psem_info {int /*<<< orphan*/ * psem_name; struct vinfo_stat psem_stat; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pseminfo* PSEMINFO_NULL ; 
 scalar_t__ PSEMNAMLEN ; 
 int PSEM_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vinfo_stat*,int) ; 

int
FUNC4(struct psemnode *pnode, struct psem_info * info)
{
	struct pseminfo *pinfo;
	struct vinfo_stat  *sb;

	FUNC0();
	if ((pinfo = pnode->pinfo) == PSEMINFO_NULL){
		FUNC1();
		return(EINVAL);
	}

#if 0
	if ((pinfo->psem_flags & PSEM_ALLOCATED) != PSEM_ALLOCATED) {
		PSEM_SUBSYS_UNLOCK();
		return(EINVAL);
	}
#endif

	sb = &info->psem_stat;
	FUNC3(sb, sizeof(struct vinfo_stat));

    	sb->vst_mode = pinfo->psem_mode;
    	sb->vst_uid = pinfo->psem_uid;
    	sb->vst_gid = pinfo->psem_gid;
    	sb->vst_size = pinfo->psem_usecount;
	FUNC2(&pinfo->psem_name[0], &info->psem_name[0], PSEMNAMLEN+1);

	FUNC1();
	return(0);
}