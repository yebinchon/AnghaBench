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
struct UNDReply {int dummy; } ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  TYPE_1__* UNDReplyRef ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  self_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKOT_NONE ; 
 int /*<<< orphan*/  IKO_NULL ; 
 int /*<<< orphan*/  IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockCompatGroup ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC8(
	UNDReplyRef		reply)
{
	ipc_port_t port;

	FUNC1(reply);
	port = reply->self_port;
	FUNC3(FUNC0(port));
	FUNC4(port, IKO_NULL, IKOT_NONE);
	reply->self_port = IP_NULL;
	FUNC2(reply);

	FUNC5(port);
	FUNC7(&reply->lock, &LockCompatGroup);
	FUNC6(reply, sizeof(struct UNDReply));
	return;
}