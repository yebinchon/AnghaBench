#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_9__ {TYPE_2__* last; TYPE_2__* first; } ;
struct TYPE_10__ {TYPE_2__* first; } ;
struct TYPE_7__ {scalar_t__ num_pendingmsgs; TYPE_4__ pending_msgs; TYPE_6__ inactive_msgs; } ;
typedef  TYPE_1__ mq_cntrl ;
struct TYPE_8__ {struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef  TYPE_2__ lwp_node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__* FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

u32 FUNC4(mq_cntrl *mqueue)
{
	u32 level;
	lwp_node *inactive;
	lwp_node *mqueue_first;
	lwp_node *mqueue_last;
	u32 cnt;

	FUNC0(level);

	inactive = mqueue->inactive_msgs.first;
	mqueue_first = mqueue->pending_msgs.first;
	mqueue_last = mqueue->pending_msgs.last;

	mqueue->inactive_msgs.first = mqueue_first;
	mqueue_last->next = inactive;
	inactive->prev = mqueue_last;
	mqueue_first->prev = FUNC2(&mqueue->inactive_msgs);

	FUNC3(&mqueue->pending_msgs);

	cnt = mqueue->num_pendingmsgs;
	mqueue->num_pendingmsgs = 0;

	FUNC1(level);
	return cnt;
}