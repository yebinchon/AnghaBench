#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ TimeOut; int /*<<< orphan*/  AsyncMode; } ;
struct TYPE_6__ {int unblocked; int /*<<< orphan*/  thread; TYPE_2__* sock; int /*<<< orphan*/  cancel; } ;
typedef  TYPE_1__ SOCKET_TIMEOUT_PARAM ;
typedef  TYPE_2__ SOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SocketTimeoutThread ; 
 scalar_t__ TIMEOUT_INFINITE ; 

SOCKET_TIMEOUT_PARAM *FUNC3(SOCK *sock)
{
	SOCKET_TIMEOUT_PARAM *ttp;
	if(! sock->AsyncMode && sock->TimeOut != TIMEOUT_INFINITE)
	{
//		Debug("NewSockTimeout(%u)\n",sock->TimeOut);

		ttp = (SOCKET_TIMEOUT_PARAM*)FUNC0(sizeof(SOCKET_TIMEOUT_PARAM));

		// Set the parameters of the time-out thread
		ttp->cancel = FUNC1();
		ttp->sock = sock;
		ttp->unblocked = false;
		ttp->thread = FUNC2(SocketTimeoutThread, ttp);
		return ttp;
	}
	return NULL;
}