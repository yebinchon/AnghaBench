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
struct TYPE_7__ {int /*<<< orphan*/  ref; } ;
struct TYPE_6__ {int UserCanceled; int CancelConnect; int Halt; int ForceStopFlag; int /*<<< orphan*/  Thread; TYPE_2__* Connection; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  Cancel1; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(SESSION *s, bool no_wait)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	// Halting flag
	s->UserCanceled = true;
	s->CancelConnect = true;
	s->Halt = true;

	FUNC2("Stop Session %s\n", s->Name);

	// Cancel
	FUNC1(s->Cancel1);

	// Event
	FUNC4(s->HaltEvent);

	// Server and client mode
	if (s->Connection)
	{
		CONNECTION *c = s->Connection;
		FUNC0(c->ref);
		FUNC5(c, no_wait);
		FUNC3(c);
	}

	// Wait until the stop
	if (no_wait == false)
	{
		while (true)
		{
			s->ForceStopFlag = true;
			s->Halt = true;
			if (FUNC6(s->Thread, 20))
			{
				break;
			}
		}
	}
	else
	{
		s->ForceStopFlag = true;
		s->Halt = true;
	}
}