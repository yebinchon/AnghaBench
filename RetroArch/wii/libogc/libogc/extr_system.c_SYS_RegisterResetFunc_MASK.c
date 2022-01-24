#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  prev; int /*<<< orphan*/ * next; } ;
struct TYPE_6__ {scalar_t__ prio; TYPE_4__ node; } ;
typedef  TYPE_1__ sys_resetinfo ;
struct TYPE_7__ {scalar_t__ first; } ;
typedef  TYPE_2__ lwp_queue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_2__ sys_reset_func_queue ; 

void FUNC3(sys_resetinfo *info)
{
	u32 level;
	sys_resetinfo *after;
	lwp_queue *header = &sys_reset_func_queue;

	FUNC0(level);
	for(after=(sys_resetinfo*)header->first;after->node.next!=NULL && info->prio>=after->prio;after=(sys_resetinfo*)after->node.next);
	FUNC2(after->node.prev,&info->node);
	FUNC1(level);
}