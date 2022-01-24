#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  mqmsg_t ;
typedef  scalar_t__ mqbox_t ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_1__ object; int /*<<< orphan*/  mqueue; } ;
typedef  TYPE_2__ mqbox_st ;
struct TYPE_9__ {int /*<<< orphan*/  mode; } ;
typedef  TYPE_3__ mq_attr ;

/* Variables and functions */
 int /*<<< orphan*/  LWP_MQ_FIFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWP_OBJTYPE_MBOX ; 
 int MQ_ERROR_SUCCESSFUL ; 
 int MQ_ERROR_TOOMANY ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int) ; 

s32 FUNC6(mqbox_t *mqbox,u32 count)
{
	mq_attr attr;
	mqbox_st *ret = NULL;

	if(!mqbox) return -1;

	ret = FUNC2();
	if(!ret) return MQ_ERROR_TOOMANY;

	attr.mode = LWP_MQ_FIFO;
	if(!FUNC5(&ret->mqueue,&attr,count,sizeof(mqmsg_t))) {
		FUNC3(ret);
		FUNC4();
		return MQ_ERROR_TOOMANY;
	}

	*mqbox = (mqbox_t)(FUNC1(LWP_OBJTYPE_MBOX)|FUNC0(ret->object.id));
	FUNC4();
	return MQ_ERROR_SUCCESSFUL;
}