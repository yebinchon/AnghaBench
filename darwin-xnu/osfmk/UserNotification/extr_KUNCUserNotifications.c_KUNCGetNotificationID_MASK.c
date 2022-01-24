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
struct UNDReply {int dummy; } ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
typedef  TYPE_1__* UNDReplyRef ;
struct TYPE_4__ {scalar_t__ self_port; int userLandNotificationKey; int /*<<< orphan*/  inprogress; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  KUNCUserNotificationID ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IKOT_UND_REPLY ; 
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LockCompatGroup ; 
 TYPE_1__* UND_REPLY_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

KUNCUserNotificationID
FUNC5(void)
{
	UNDReplyRef reply;

	reply = (UNDReplyRef) FUNC2(sizeof(struct UNDReply));
	if (reply != UND_REPLY_NULL) {
		reply->self_port = FUNC1();
		if (reply->self_port == IP_NULL) {
			FUNC3(reply, sizeof(struct UNDReply));
			reply = UND_REPLY_NULL;
		} else {
			FUNC4(&reply->lock, &LockCompatGroup, LCK_ATTR_NULL);
			reply->userLandNotificationKey = -1;
			reply->inprogress = FALSE;
			FUNC0(reply->self_port,
					(ipc_kobject_t)reply,
					IKOT_UND_REPLY);
		}
	}
	return (KUNCUserNotificationID) reply;
}