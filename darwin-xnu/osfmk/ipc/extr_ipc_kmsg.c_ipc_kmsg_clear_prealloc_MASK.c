#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_port_t ;
typedef  TYPE_2__* ipc_kmsg_t ;
struct TYPE_9__ {int /*<<< orphan*/  ikm_turnstile; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip_messages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC4(
	ipc_kmsg_t		kmsg,
	ipc_port_t		port)
{
	/* take the mqueue lock since the turnstile is protected under it */
	FUNC1(&port->ip_messages);

	FUNC0(port, kmsg);
	FUNC3(port, kmsg->ikm_turnstile);
	FUNC2(&port->ip_messages);
}