#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  hubname ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {TYPE_1__* Server; } ;
struct TYPE_19__ {int Me; } ;
struct TYPE_18__ {char* HubName; } ;
struct TYPE_17__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_IP_TABLE ;
typedef  TYPE_3__ FARM_MEMBER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*,char*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

UINT FUNC10(ADMIN *a, RPC_ENUM_IP_TABLE *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];
	UINT i;

	CHECK_RIGHT;

	// Get local IP address table
	FUNC7(hubname, sizeof(hubname), t->HubName);
	FUNC1(t);
	FUNC9(t, sizeof(RPC_ENUM_IP_TABLE));
	FUNC7(t->HubName, sizeof(t->HubName), hubname);

	ret = FUNC6(s, hubname, t);
	if (ret != ERR_NO_ERROR)
	{
		return ret;
	}

	if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		// Get remote IP address table
		FUNC4(s->FarmMemberList);
		{
			for (i = 0;i < FUNC3(s->FarmMemberList);i++)
			{
				FARM_MEMBER *f = FUNC2(s->FarmMemberList, i);
				if (f->Me == false)
				{
					RPC_ENUM_IP_TABLE tmp;

					FUNC9(&tmp, sizeof(tmp));

					FUNC5(s, f, hubname, &tmp);

					FUNC0(t, &tmp);
					FUNC1(&tmp);
				}
			}
		}
		FUNC8(s->FarmMemberList);
	}

	return ret;
}