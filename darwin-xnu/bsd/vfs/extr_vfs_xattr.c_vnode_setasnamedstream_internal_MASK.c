#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  v_lflag; int /*<<< orphan*/  v_flag; TYPE_1__* v_mount; } ;
struct TYPE_9__ {int mnt_kern_flag; } ;

/* Variables and functions */
 int MNTK_NAMED_STREAMS ; 
 int /*<<< orphan*/  VISNAMEDSTREAM ; 
 int /*<<< orphan*/  VISSHADOW ; 
 int /*<<< orphan*/  VL_HASSTREAMS ; 
 int /*<<< orphan*/  VNODE_UPDATE_NAMEDSTREAM_PARENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(vnode_t vp, vnode_t svp)
{
	uint32_t streamflags = VISNAMEDSTREAM;

	if ((vp->v_mount->mnt_kern_flag & MNTK_NAMED_STREAMS) == 0) {
		streamflags |= VISSHADOW;
	}

	/* Tag the vnode. */
	FUNC0(svp);
	svp->v_flag |= streamflags;
	FUNC1(svp);

	/* Tag the parent so we know to flush credentials for streams on setattr */
	FUNC0(vp);
	vp->v_lflag |= VL_HASSTREAMS;
	FUNC1(vp);

	/* Make the file it's parent.
	 * Note:  This parent link helps us distinguish vnodes for
	 * shadow stream files from vnodes for resource fork on file
	 * systems that support namedstream natively (both have
	 * VISNAMEDSTREAM set) by allowing access to mount structure
	 * for checking MNTK_NAMED_STREAMS bit at many places in the
	 * code.
	 */
	FUNC2(svp, vp, NULL, 0, 0, VNODE_UPDATE_NAMEDSTREAM_PARENT);

	return;
}