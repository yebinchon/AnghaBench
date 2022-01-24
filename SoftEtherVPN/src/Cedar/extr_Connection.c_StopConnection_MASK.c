#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int Halt; int /*<<< orphan*/  Thread; int /*<<< orphan*/  FirstSock; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(CONNECTION *c, bool no_wait)
{
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	FUNC0("Stop Connection: %s\n", c->Name);

	// Stop flag
	c->Halt = true;
	FUNC1(c->FirstSock);

	if (no_wait == false)
	{
		// Wait until the thread terminates
		FUNC2(c->Thread, INFINITE);
	}
}