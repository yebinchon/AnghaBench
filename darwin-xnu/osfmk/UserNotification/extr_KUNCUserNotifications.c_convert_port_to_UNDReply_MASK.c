#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ UNDReplyRef ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_UND_REPLY ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ UND_REPLY_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

UNDReplyRef
FUNC6(
	ipc_port_t port)
{
	if (FUNC0(port)) {
		UNDReplyRef reply;

		FUNC4(port);
		if (!FUNC2(port) || (FUNC3(port) != IKOT_UND_REPLY)) {
			FUNC5(port);
			return UND_REPLY_NULL;
		}
		reply = (UNDReplyRef) port->ip_kobject;
		FUNC1(reply != UND_REPLY_NULL);
		FUNC5(port);
		return reply;
	}
	return UND_REPLY_NULL;
}