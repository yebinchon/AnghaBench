#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_12__ {int /*<<< orphan*/  DeviceList; } ;
struct TYPE_11__ {int NoPromiscuous; int /*<<< orphan*/  Thread; TYPE_2__* el; int /*<<< orphan*/  LogSetting; int /*<<< orphan*/  DeviceName; } ;
typedef  int /*<<< orphan*/  HUB_LOG ;
typedef  TYPE_1__ EL_DEVICE ;
typedef  TYPE_2__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ElCaptureThread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC10 (int) ; 

bool FUNC11(EL *e, char *name, HUB_LOG *log, bool no_promiscuous)
{
	EL_DEVICE *d, t;
	// Validate arguments
	if (e == NULL || name == NULL || log == NULL)
	{
		return false;
	}

	FUNC9(&t, sizeof(t));
	FUNC6(t.DeviceName, sizeof(t.DeviceName), name);

	FUNC3(e->DeviceList);
	{
		d = FUNC5(e->DeviceList, &t);
		if (d != NULL)
		{
			// Capture settings with the same name already exists
			FUNC7(e->DeviceList);
			return false;
		}

		// Add a device
		d = FUNC10(sizeof(EL_DEVICE));
		FUNC6(d->DeviceName, sizeof(d->DeviceName), name);
		FUNC0(&d->LogSetting, log, sizeof(HUB_LOG));
		d->NoPromiscuous = no_promiscuous;
		d->el = e;
		FUNC2(e->DeviceList, d);

		// Start the thread
		d->Thread = FUNC4(ElCaptureThread, d);
		FUNC8(d->Thread);
	}
	FUNC7(e->DeviceList);

	FUNC1(e);

	return true;
}