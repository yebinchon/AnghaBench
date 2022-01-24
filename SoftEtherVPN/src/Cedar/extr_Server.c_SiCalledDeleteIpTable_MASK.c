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
typedef  int /*<<< orphan*/  hubname ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  IpTable; } ;
struct TYPE_6__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  IP_TABLE_ENTRY ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(SERVER *s, PACK *p)
{
	UINT key;
	char hubname[MAX_HUBNAME_LEN + 1];
	HUB *h;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	if (FUNC7(p, "HubName", hubname, sizeof(hubname)) == false)
	{
		return;
	}
	key = FUNC6(p, "Key");

	FUNC4(s->Cedar);
	{
		h = FUNC2(s->Cedar, hubname);
	}
	FUNC9(s->Cedar);

	if (h == NULL)
	{
		return;
	}

	FUNC5(h->IpTable);
	{
		if (FUNC3(h->IpTable, (void *)key))
		{
			IP_TABLE_ENTRY *e = (IP_TABLE_ENTRY *)key;
			FUNC0(h->IpTable, e);
			FUNC1(e);
		}
	}
	FUNC10(h->IpTable);

	FUNC8(h);
}