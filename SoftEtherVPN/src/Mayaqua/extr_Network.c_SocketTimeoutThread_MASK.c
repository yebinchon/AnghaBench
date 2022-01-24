#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* sock; int /*<<< orphan*/  unblocked; int /*<<< orphan*/  cancel; } ;
struct TYPE_3__ {int /*<<< orphan*/  socket; int /*<<< orphan*/  TimeOut; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ SOCKET_TIMEOUT_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(THREAD *t, void *param)
{
	SOCKET_TIMEOUT_PARAM *ttparam;
	ttparam = (SOCKET_TIMEOUT_PARAM *)param;

	// Wait for time-out period
	FUNC0(NULL, ttparam->sock->TimeOut, ttparam->cancel, NULL);

	// Disconnect if it is blocked
	if(! ttparam->unblocked)
	{
//		Debug("Socket timeouted\n");
		FUNC1(ttparam->sock->socket);
	}
	else
	{
//		Debug("Socket timeout cancelled\n");
	}
}