#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* com_dedicated ; 
 scalar_t__ ip_socket ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

void FUNC3(int msec)
{
    struct timeval timeout;
	fd_set	fdset;
	extern qboolean stdin_active;

	if (!ip_socket || !com_dedicated->integer)
		return; // we're not a server, just run full speed

	FUNC1(&fdset);
	if (stdin_active)
		FUNC0(0, &fdset); // stdin is processed too
	FUNC0(ip_socket, &fdset); // network socket
	timeout.tv_sec = msec/1000;
	timeout.tv_usec = (msec%1000)*1000;
	FUNC2(ip_socket+1, &fdset, NULL, NULL, &timeout);
}