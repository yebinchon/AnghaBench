#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int Halt; int ShadowIPv6; scalar_t__ Protocol; int /*<<< orphan*/  Cedar; struct TYPE_8__* ShadowListener; int /*<<< orphan*/  Thread; int /*<<< orphan*/  Event; int /*<<< orphan*/  Port; int /*<<< orphan*/  lock; TYPE_1__* Sock; } ;
struct TYPE_7__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ LISTENER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ LISTENER_TCP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(LISTENER *r)
{
	UINT port;
	SOCK *s = NULL;
	// Validate arguments
	if (r == NULL)
	{
		return;
	}

	FUNC2(r->lock);
	if (r->Halt)
	{
		FUNC7(r->lock);
		return;
	}

	// Stop flag set
	r->Halt = true;

	if (r->Sock != NULL)
	{
		s = r->Sock;

		FUNC0(s->ref);
	}

	FUNC7(r->lock);

	port = r->Port;

	if (r->ShadowIPv6 == false && r->Protocol == LISTENER_TCP)
	{
		FUNC5(r->Cedar, "LS_LISTENER_STOP_1", port);
	}

	// Close the socket
	if (s != NULL)
	{
		FUNC1(s);
		FUNC4(s);
		s = NULL;
	}

	// Set the event
	FUNC6(r->Event);

	// Wait for stopping the thread
	FUNC8(r->Thread, INFINITE);

	// Stop the shadow listener
	if (r->ShadowIPv6 == false)
	{
		if (r->ShadowListener != NULL)
		{
			FUNC9(r->ShadowListener);

			FUNC3(r->ShadowListener);

			r->ShadowListener = NULL;
		}
	}

	if (r->ShadowIPv6 == false && r->Protocol == LISTENER_TCP)
	{
		FUNC5(r->Cedar, "LS_LISTENER_STOP_2", port);
	}
}