#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/ * Session; } ;
typedef  TYPE_1__ UDP_ENTRY ;
struct TYPE_8__ {int /*<<< orphan*/  UDPEntryList; } ;
typedef  int /*<<< orphan*/  SESSION ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(CEDAR *cedar, SESSION *session)
{
	UINT num, i;
	// Validate arguments
	if (cedar == NULL || session == NULL)
	{
		return;
	}

	FUNC5(cedar->UDPEntryList);
	{
		num = FUNC4(cedar->UDPEntryList);
		for (i = 0;i < num;i++)
		{
			UDP_ENTRY *e = FUNC3(cedar->UDPEntryList, i);
			if (e->Session == session)
			{
				FUNC6(e->Session);
				FUNC1(cedar->UDPEntryList, e);
				FUNC2(e);
				FUNC7(cedar->UDPEntryList);
				FUNC0("UDP_Entry Deleted.\n");
				return;
			}
		}
	}
	FUNC7(cedar->UDPEntryList);
}