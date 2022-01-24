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
typedef  int /*<<< orphan*/  uint32_t ;
struct flow_divert_pcb {int /*<<< orphan*/  hash; } ;
struct flow_divert_group {int /*<<< orphan*/  lck; int /*<<< orphan*/  pcb_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flow_divert_pcb*) ; 
 struct flow_divert_pcb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  fd_pcb_tree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct flow_divert_pcb *
FUNC4(uint32_t hash, struct flow_divert_group *group)
{
	struct flow_divert_pcb	key_item;
	struct flow_divert_pcb	*fd_cb		= NULL;

	key_item.hash = hash;

	FUNC3(&group->lck);
	fd_cb = FUNC1(fd_pcb_tree, &group->pcb_tree, &key_item);
	FUNC0(fd_cb);
	FUNC2(&group->lck);

	return fd_cb;
}