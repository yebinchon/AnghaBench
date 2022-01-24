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
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/ * DeviceList; int /*<<< orphan*/  CfgRw; } ;
struct TYPE_6__ {int /*<<< orphan*/  DeviceName; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ EL_DEVICE ;
typedef  TYPE_2__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(EL *e)
{
	UINT i;
	LIST *o;
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	// Write the configuration file
	FUNC2(e);
	FUNC4(e->CfgRw);

	// Stop all capture
	o = FUNC9(NULL);
	FUNC8(e->DeviceList);
	{
		for (i = 0;i < FUNC7(e->DeviceList);i++)
		{
			EL_DEVICE *d = FUNC6(e->DeviceList, i);
			FUNC5(o, FUNC0(d->DeviceName));
		}
		for (i = 0;i < FUNC7(o);i++)
		{
			char *name = FUNC6(o, i);
			FUNC1(e, name);
			FUNC3(name);
		}
		FUNC10(o);
	}
	FUNC11(e->DeviceList);

	FUNC10(e->DeviceList);
}