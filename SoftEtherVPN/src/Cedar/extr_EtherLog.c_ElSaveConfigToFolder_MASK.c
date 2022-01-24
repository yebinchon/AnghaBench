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
struct TYPE_7__ {int /*<<< orphan*/  DeviceList; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  Port; int /*<<< orphan*/  AutoDeleteCheckDiskFreeSpaceMin; } ;
struct TYPE_6__ {char* DeviceName; int /*<<< orphan*/  NoPromiscuous; int /*<<< orphan*/  LogSetting; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ EL_DEVICE ;
typedef  TYPE_2__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int ELOG_IS_BETA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(EL *e, FOLDER *root)
{
	UINT i;
	FOLDER *devices;
	// Validate arguments
	if (e == NULL || root == NULL)
	{
		return;
	}

	FUNC3(root, "AutoDeleteCheckDiskFreeSpaceMin", e->AutoDeleteCheckDiskFreeSpaceMin);

	FUNC2(root, "AdminPort", e->Port);

	FUNC1(root, "AdminPassword", e->HashedPassword, sizeof(e->HashedPassword));

	if (ELOG_IS_BETA == false)
	{
		FUNC5(FUNC4(root, "LicenseManager"), e);
	}

	devices = FUNC4(root,"Devices");

	FUNC8(e->DeviceList);
	{
		for (i = 0;i < FUNC7(e->DeviceList);i++)
		{
			FOLDER *f;
			EL_DEVICE *d = FUNC6(e->DeviceList, i);

			f = FUNC4(devices, d->DeviceName);
			FUNC9(f, &d->LogSetting, true);
			FUNC0(f, "NoPromiscuousMode", d->NoPromiscuous);
		}
	}
	FUNC10(e->DeviceList);
}