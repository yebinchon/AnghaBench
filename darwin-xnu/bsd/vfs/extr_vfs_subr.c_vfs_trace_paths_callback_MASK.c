#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mount_t ;
struct TYPE_4__ {int mnt_flag; } ;

/* Variables and functions */
 int MNT_LOCAL ; 
 int VFS_RETURNED ; 
 int /*<<< orphan*/  VNODE_ITERATE_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  vnode_trace_path_callback ; 

__attribute__((used)) static int FUNC1(mount_t mp, void *arg) {
	if (mp->mnt_flag & MNT_LOCAL)
		FUNC0(mp, VNODE_ITERATE_ALL, vnode_trace_path_callback, arg);

	return VFS_RETURNED;
}