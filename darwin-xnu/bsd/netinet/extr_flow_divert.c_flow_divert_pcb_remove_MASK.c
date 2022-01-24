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
struct flow_divert_pcb {struct flow_divert_group* group; int /*<<< orphan*/  ref_count; } ;
struct flow_divert_group {int /*<<< orphan*/  lck; int /*<<< orphan*/  pcb_tree; int /*<<< orphan*/  ctl_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  fd_pcb_tree ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct flow_divert_pcb *fd_cb)
{
	if (fd_cb->group != NULL) {
		struct flow_divert_group *group = fd_cb->group;
		FUNC4(&group->lck);
		FUNC0(LOG_INFO, fd_cb, "Removing from group %d, ref count = %d", group->ctl_unit, fd_cb->ref_count);
		FUNC2(fd_pcb_tree, &group->pcb_tree, fd_cb);
		fd_cb->group = NULL;
		FUNC1(fd_cb);				/* Release the group's reference */
		FUNC3(&group->lck);
	}
}