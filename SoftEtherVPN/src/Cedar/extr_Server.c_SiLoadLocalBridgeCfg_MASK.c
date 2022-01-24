#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  tapaddr ;
typedef  int /*<<< orphan*/  nic ;
typedef  int /*<<< orphan*/  hub ;
typedef  char UCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  OsType; } ;
struct TYPE_8__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,scalar_t__,scalar_t__,int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_5__* FUNC5 () ; 
 scalar_t__ FUNC6 (char*) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

void FUNC10(SERVER *s, FOLDER *f)
{
	char hub[MAX_SIZE];
	char nic[MAX_SIZE];
	bool tapmode = false;
	UCHAR tapaddr[6];
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

	FUNC9(hub, sizeof(hub));
	FUNC9(nic, sizeof(nic));

	FUNC2(f, "HubName", hub, sizeof(hub));
	FUNC2(f, "DeviceName", nic, sizeof(nic));

	if (FUNC6(hub) || FUNC6(nic)
		)
	{
		return;
	}

	if (FUNC7(FUNC5()->OsType))
	{
		if (FUNC1(f, "TapMode"))
		{
			char tmp[MAX_SIZE];
			tapmode = true;
			FUNC9(tapaddr, sizeof(tapaddr));
			if (FUNC2(f, "TapMacAddress", tmp, sizeof(tmp)))
			{
				BUF *b;
				b = FUNC8(tmp);
				if (b != NULL && b->Size == 6)
				{
					FUNC3(tapaddr, b->Buf, sizeof(tapaddr));
				}
				FUNC4(b);
			}
		}
	}

	FUNC0(s->Cedar, hub, nic, FUNC1(f, "NoPromiscuousMode"), FUNC1(f, "MonitorMode"),
		tapmode, tapaddr, FUNC1(f, "LimitBroadcast"));
}