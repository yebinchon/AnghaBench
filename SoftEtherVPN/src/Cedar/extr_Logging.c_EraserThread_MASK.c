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
typedef  int /*<<< orphan*/  bs ;
struct TYPE_4__ {int Halt; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  DirName; int /*<<< orphan*/  MinFreeSpace; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ ERASER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(THREAD *t, void *p)
{
	ERASER *e = (ERASER *)p;
	char bs[64];
	// Validate arguments
	if (t == NULL || e == NULL)
	{
		return;
	}

	// Start monitoring
	FUNC3(bs, sizeof(bs), e->MinFreeSpace);
	FUNC0(e, "LE_START", e->DirName, bs);

	while (e->Halt == false)
	{
		// Check the amount of free space on the disk periodically
		FUNC1(e);

		FUNC4(e->HaltEvent, FUNC2());
	}
}