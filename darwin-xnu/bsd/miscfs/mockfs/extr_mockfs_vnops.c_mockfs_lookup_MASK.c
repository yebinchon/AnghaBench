#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnop_lookup_args {int /*<<< orphan*/  a_context; struct componentname* a_cnp; TYPE_1__** a_vpp; TYPE_1__* a_dvp; } ;
struct componentname {int cn_nameiop; char* cn_nameptr; size_t cn_namelen; } ;
typedef  TYPE_2__* mockfs_fsnode_t ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ v_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int LOOKUP ; 
 int /*<<< orphan*/  MOCKFS_DEV ; 
 int /*<<< orphan*/  MOCKFS_FILE ; 
 scalar_t__ MOCKFS_ROOT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

int FUNC3(struct vnop_lookup_args * ap)
{
	char held_char;
	int rvalue;
	int op;
	mockfs_fsnode_t fsnode;
	mockfs_fsnode_t target_fsnode;
	vnode_t dvp;
	vnode_t * vpp;
	vfs_context_t ctx;
	struct componentname * cnp;

	rvalue = 0;
	dvp = ap->a_dvp;
	vpp = ap->a_vpp;
	cnp = ap->a_cnp;
	ctx = ap->a_context;
	op = cnp->cn_nameiop;
	fsnode = (mockfs_fsnode_t) dvp->v_data;
	target_fsnode = NULL;

	if ((op == LOOKUP) && (fsnode->type == MOCKFS_ROOT)) {
		/*
		 * Okay, we're looking in the root directory, so we aren't necessarily
		 *   going to fail.  What are we looking for?
		 */

		held_char = cnp->cn_nameptr[cnp->cn_namelen];
		cnp->cn_nameptr[cnp->cn_namelen] = '\0';

		/*
		 * We'll resolve sbin to /, and launchd to the executable for the moment, so that I don't
		 *   accidentally commit a change to the init_process pathname.  We map from name to node type
		 *   here, as mockfs doesn't current use names; just unique types.
		 */
		if (!FUNC2(cnp->cn_nameptr, "sbin", 5))
			target_fsnode = fsnode;
		else if (!FUNC2(cnp->cn_nameptr, "dev", 4))
			FUNC0(fsnode, MOCKFS_DEV, &target_fsnode);
		else if (!FUNC2(cnp->cn_nameptr, "launchd", 8))
			FUNC0(fsnode, MOCKFS_FILE, &target_fsnode);
		else
			rvalue = ENOENT;

		cnp->cn_nameptr[cnp->cn_namelen] = held_char;

		if (target_fsnode)
			rvalue = FUNC1(target_fsnode, vpp);
	}
	else {
		/*
		 * We aren't looking in root; the query may actually be reasonable, but we're not
		 *   going to support it.
		 */
		rvalue = ENOENT;
	}

	return rvalue;	
}