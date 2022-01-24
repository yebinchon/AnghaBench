#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct mount {int dummy; } ;
typedef  TYPE_2__* mount_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_11__ {scalar_t__ mnt_crossref; } ;
struct TYPE_10__ {TYPE_2__* v_mountedhere; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(mount_t mp, vnode_t dp, int need_put)
{
	FUNC4(dp);
	mp->mnt_crossref--;

	if (mp->mnt_crossref < 0)
		FUNC3("mount cross refs -ve");

	if ((mp != dp->v_mountedhere) && (mp->mnt_crossref == 0)) {

		if (need_put)
			FUNC5(dp);
		FUNC6(dp);

		FUNC2(mp);
#if CONFIG_MACF
		mac_mount_label_destroy(mp);
#endif
		FUNC0((caddr_t)mp, sizeof (struct mount), M_MOUNT);
		return;
	}
	if (need_put)
		FUNC5(dp);
	FUNC6(dp);
}