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
struct TYPE_4__ {int Halt; struct TYPE_4__* DirName; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  Thread; } ;
typedef  TYPE_1__ ERASER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(ERASER *e)
{
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	e->Halt = true;
	FUNC3(e->HaltEvent);
	FUNC4(e->Thread, INFINITE);
	FUNC2(e->Thread);
	FUNC1(e->HaltEvent);

	FUNC0(e->DirName);
	FUNC0(e);
}