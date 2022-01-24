#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Halt; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  lock; int /*<<< orphan*/  Thread; int /*<<< orphan*/  Sock; } ;
typedef  TYPE_1__ FARM_CONTROLLER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(FARM_CONTROLLER *f)
{
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	f->Halt = true;

	// Stop the connection
	FUNC3(f->lock);
	{
		FUNC1(f->Sock);
	}
	FUNC7(f->lock);

	FUNC6(f->HaltEvent);

	// Wait for the thread termination
	FUNC8(f->Thread, INFINITE);
	FUNC5(f->Thread);

	FUNC0(f->lock);
	FUNC4(f->HaltEvent);

	FUNC2(f);
}