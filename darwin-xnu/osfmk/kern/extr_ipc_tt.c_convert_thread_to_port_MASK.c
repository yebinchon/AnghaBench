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
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ ipc_port_t ;
struct TYPE_6__ {scalar_t__ ith_self; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

ipc_port_t
FUNC4(
	thread_t		thread)
{
	ipc_port_t		port;

	FUNC2(thread);

	if (thread->ith_self != IP_NULL)
		port = FUNC0(thread->ith_self);
	else
		port = IP_NULL;

	FUNC3(thread);

	FUNC1(thread);

	return (port);
}