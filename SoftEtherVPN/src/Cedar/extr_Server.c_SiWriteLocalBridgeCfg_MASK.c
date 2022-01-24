#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_5__ {int /*<<< orphan*/  OsType; } ;
struct TYPE_4__ {char* DeviceName; char* HubName; int /*<<< orphan*/  TapMacAddress; scalar_t__ TapMode; scalar_t__ LimitBroadcast; scalar_t__ Monitor; scalar_t__ Local; } ;
typedef  TYPE_1__ LOCALBRIDGE ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_3__* FUNC2 () ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(FOLDER *f, LOCALBRIDGE *br)
{
	// Validate arguments
	if (f == NULL || br == NULL)
	{
		return;
	}

	FUNC1(f, "DeviceName", br->DeviceName);
	FUNC1(f, "HubName", br->HubName);
	FUNC0(f, "NoPromiscuousMode", br->Local);
	FUNC0(f, "MonitorMode", br->Monitor);
	FUNC0(f, "LimitBroadcast", br->LimitBroadcast);

	if (FUNC4(FUNC2()->OsType))
	{
		FUNC0(f, "TapMode", br->TapMode);

		if (br->TapMode)
		{
			char tmp[MAX_SIZE];
			FUNC3(tmp, sizeof(tmp), br->TapMacAddress);
			FUNC1(f, "TapMacAddress", tmp);
		}
	}
}