#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_10__ {int /*<<< orphan*/  DeviceList; } ;
struct TYPE_9__ {int Halt; int /*<<< orphan*/  Thread; int /*<<< orphan*/  Cancel1; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ EL_DEVICE ;
typedef  TYPE_2__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

bool FUNC10(EL *e, char *name)
{
	bool ret = false;
	EL_DEVICE *d, t;
	// Validate arguments
	if (e == NULL || name == NULL)
	{
		return false;
	}

	FUNC3(e->DeviceList);
	{
		FUNC9(&t, sizeof(t));
		FUNC6(t.DeviceName, sizeof(t.DeviceName), name);

		d = FUNC5(e->DeviceList, &t);

		if (d != NULL)
		{
			// Stop capture
			d->Halt = true;
			FUNC0(d->Cancel1);

			// Wait for thread stop
			FUNC8(d->Thread, INFINITE);
			FUNC4(d->Thread);

			// Release the memory
			FUNC1(e->DeviceList, d);
			FUNC2(d);

			ret = true;
		}
	}
	FUNC7(e->DeviceList);

	return ret;
}