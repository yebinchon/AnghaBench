#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket {scalar_t__ last_pid; scalar_t__ last_upid; int /*<<< orphan*/  so_vuuid; int /*<<< orphan*/  last_uuid; } ;
typedef  scalar_t__ proc_t ;

/* Variables and functions */
 scalar_t__ PROC_NULL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void
FUNC5(struct socket *so, proc_t self)
{
	if (so->last_pid != 0) {
		/*
		 * last_pid and last_upid should remain zero for sockets
		 * created using sock_socket. The check above achieves that
		 */
		if (self == PROC_NULL)
			self = FUNC0();

		if (so->last_upid != FUNC4(self) ||
		    so->last_pid != FUNC2(self)) {
			so->last_upid = FUNC4(self);
			so->last_pid = FUNC2(self);
			FUNC1(self, so->last_uuid,
			    sizeof (so->last_uuid));
		}
		FUNC3(so->so_vuuid, sizeof(so->so_vuuid));
	}
}