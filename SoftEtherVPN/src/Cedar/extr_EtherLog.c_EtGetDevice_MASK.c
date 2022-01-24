#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  a ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int /*<<< orphan*/  DeviceList; } ;
struct TYPE_10__ {int /*<<< orphan*/  NoPromiscuous; int /*<<< orphan*/  LogSetting; int /*<<< orphan*/  DeviceName; } ;
struct TYPE_9__ {int /*<<< orphan*/  NoPromiscuous; int /*<<< orphan*/  LogSetting; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_ADD_DEVICE ;
typedef  int /*<<< orphan*/  HUB_LOG ;
typedef  TYPE_2__ EL_DEVICE ;
typedef  TYPE_3__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_CAPTURE_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

UINT FUNC6(EL *e, RPC_ADD_DEVICE *t)
{
	UINT ret = ERR_CAPTURE_NOT_FOUND;

	FUNC1(e->DeviceList);
	{
		EL_DEVICE *d, a;
		FUNC5(&a, sizeof(a));
		FUNC3(a.DeviceName, sizeof(a.DeviceName), t->DeviceName);

		d = FUNC2(e->DeviceList, &a);

		if (d != NULL)
		{
			ret = ERR_NO_ERROR;

			FUNC0(&t->LogSetting, &d->LogSetting, sizeof(HUB_LOG));
			t->NoPromiscuous = d->NoPromiscuous;
		}
	}
	FUNC4(e->DeviceList);

	return ret;
}