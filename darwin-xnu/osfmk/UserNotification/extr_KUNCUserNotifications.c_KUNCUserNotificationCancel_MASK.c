#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  UNDServerRef ;
typedef  TYPE_1__* UNDReplyRef ;
struct TYPE_6__ {int userLandNotificationKey; scalar_t__ inprogress; } ;
typedef  int /*<<< orphan*/  KUNCUserNotificationID ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_SEND_INVALID_DEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* UND_REPLY_NULL ; 

kern_return_t FUNC7(
	KUNCUserNotificationID id)
{
	UNDReplyRef reply = (UNDReplyRef)id;
	kern_return_t kr;
	int ulkey;

	if (reply == UND_REPLY_NULL)
		return KERN_INVALID_ARGUMENT;

	FUNC3(reply);
	if (!reply->inprogress) {
		FUNC4(reply);
		return KERN_INVALID_ARGUMENT;
	}

	reply->inprogress = FALSE;
	if ((ulkey = reply->userLandNotificationKey) != 0) {
		UNDServerRef UNDServer;

		reply->userLandNotificationKey = 0;
		FUNC4(reply);

		UNDServer = FUNC6();
		if (FUNC0(UNDServer)) {
			kr = FUNC1(UNDServer,ulkey);
			FUNC5(UNDServer);
		} else
			kr = MACH_SEND_INVALID_DEST;
	} else {
		FUNC4(reply);
		kr = KERN_SUCCESS;
	}
	FUNC2(reply);
	return kr;
}