#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  g ;
typedef  int UINT ;
struct TYPE_9__ {int Port; scalar_t__ AutoDeleteCheckDiskFreeSpaceMin; int /*<<< orphan*/  DeviceList; int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  HUB_LOG ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ EL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ DISK_FREE_SPACE_DEFAULT ; 
 scalar_t__ DISK_FREE_SPACE_MIN ; 
 int ELOG_IS_BETA ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

void FUNC15(EL *e, FOLDER *root)
{
	UINT i;
	TOKEN_LIST *t;
	FOLDER *devices;

	// Validate arguments
	if (e == NULL || root == NULL)
	{
		return;
	}

	i = FUNC4(root, "AdminPort");
	if (i >= 1 && i <= 65535)
	{
		e->Port = i;
	}

	e->AutoDeleteCheckDiskFreeSpaceMin = FUNC5(root, "AutoDeleteCheckDiskFreeSpaceMin");
	if (FUNC6(root, "AutoDeleteCheckDiskFreeSpaceMin") == false && e->AutoDeleteCheckDiskFreeSpaceMin == 0)
	{
		e->AutoDeleteCheckDiskFreeSpaceMin = DISK_FREE_SPACE_DEFAULT;
	}

	if (e->AutoDeleteCheckDiskFreeSpaceMin != 0)
	{
		if (e->AutoDeleteCheckDiskFreeSpaceMin < DISK_FREE_SPACE_MIN)
		{
			e->AutoDeleteCheckDiskFreeSpaceMin = DISK_FREE_SPACE_MIN;
		}
	}

	if (FUNC2(root, "AdminPassword", e->HashedPassword, sizeof(e->HashedPassword)) != sizeof(e->HashedPassword))
	{
		FUNC11(e->HashedPassword, "", 0);
	}

	if (ELOG_IS_BETA == false)
	{
		FUNC7(e,	FUNC3(root, "LicenseManager"));
	}

	devices = FUNC3(root, "Devices");
	if(devices != NULL)
	{
		FUNC10(e->DeviceList);
		{
			t = FUNC0(devices);
			for (i = 0;i < t->NumTokens;i++)
			{
				char *name = t->Token[i];
				FOLDER *f = FUNC3(devices, name);

				if (f != NULL)
				{
					HUB_LOG g;

					FUNC14(&g, sizeof(g));
					FUNC12(&g, f);
					FUNC8(e, name, &g, FUNC1(f, "NoPromiscuousMode"));
				}
			}
			FUNC9(t);
		}
		FUNC13(e->DeviceList);
	}
}