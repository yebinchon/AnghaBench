#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  mqmsg_t ;
typedef  int /*<<< orphan*/  mqbox_t ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ object; int /*<<< orphan*/  mqueue; } ;
typedef  TYPE_2__ mqbox_st ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LWP_MQ_SEND_REQUEST ; 
 scalar_t__ LWP_MQ_STATUS_SUCCESSFUL ; 
 int /*<<< orphan*/  LWP_THREADQ_NOTIMEOUT ; 
 scalar_t__ MQ_MSG_BLOCK ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

BOOL FUNC3(mqbox_t mqbox,mqmsg_t msg,u32 flags)
{
	BOOL ret;
	mqbox_st *mbox;
	u32 wait = (flags==MQ_MSG_BLOCK)?TRUE:FALSE;

	mbox = FUNC0(mqbox);
	if(!mbox) return FALSE;

	ret = FALSE;
	if(FUNC2(&mbox->mqueue,mbox->object.id,(void*)&msg,sizeof(mqmsg_t),LWP_MQ_SEND_REQUEST,wait,LWP_THREADQ_NOTIMEOUT)==LWP_MQ_STATUS_SUCCESSFUL) ret = TRUE;
	FUNC1();

	return ret;
}