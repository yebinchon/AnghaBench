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
struct TYPE_9__ {int Protocol; TYPE_1__* Thread; int /*<<< orphan*/  ref; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ THREAD ;
typedef  TYPE_2__ LISTENER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LISTENER_DNS 134 
#define  LISTENER_ICMP 133 
#define  LISTENER_INPROC 132 
#define  LISTENER_REVERSE 131 
#define  LISTENER_RUDP 130 
#define  LISTENER_TCP 129 
#define  LISTENER_UDP 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(THREAD *thread, void *param)
{
	LISTENER *r;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	// Initialize
	r = (LISTENER *)param;
	FUNC0(r->ref);
	r->Thread = thread;
	FUNC0(thread->ref);
	FUNC3(thread);

	// Main loop
	switch (r->Protocol)
	{
	case LISTENER_TCP:
	case LISTENER_INPROC:
	case LISTENER_RUDP:
	case LISTENER_DNS:
	case LISTENER_ICMP:
	case LISTENER_REVERSE:
		// TCP or other stream-based protocol
		FUNC1(r);
		break;

	case LISTENER_UDP:
		// UDP protocol
		FUNC2(r);
		break;
	}

	// Release
	FUNC4(r);
}