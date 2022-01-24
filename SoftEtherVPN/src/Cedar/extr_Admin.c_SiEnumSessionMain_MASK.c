#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  hubname ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int Me; } ;
struct TYPE_19__ {char* HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_SESSION ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_3__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 

void FUNC14(SERVER *s, RPC_ENUM_SESSION *t)
{
	char hubname[MAX_HUBNAME_LEN + 1];
	UINT ret = ERR_NO_ERROR;
	UINT num;
	UINT i;
	// Validate arguments
	if (s == NULL || t == NULL)
	{
		return;
	}

	FUNC11(hubname, sizeof(hubname), t->HubName);

	FUNC2(t);
	FUNC13(t, sizeof(RPC_ENUM_SESSION));
	FUNC11(t->HubName, sizeof(t->HubName), hubname);

	// Local session enumeration
	num = 0;
	FUNC10(s, hubname, t);

	if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		LIST *fm_list;

		fm_list = FUNC7(NULL);

		// Remote session enumeration
		FUNC6(s->FarmMemberList);
		{
			while (true)
			{
				bool escape = true;

				for (i = 0;i < FUNC5(s->FarmMemberList);i++)
				{
					FARM_MEMBER *f = FUNC4(s->FarmMemberList, i);

					if (FUNC3(fm_list, f) == false)
					{
						FUNC0(fm_list, f);
						escape = false;

						if (f->Me == false)
						{
							RPC_ENUM_SESSION tmp;

							FUNC13(&tmp, sizeof(tmp));

							FUNC9(s, f, hubname, &tmp);

							FUNC1(t, &tmp);
							FUNC2(&tmp);
						}

						break;
					}
				}

				if (escape)
				{
					break;
				}

				FUNC12(s->FarmMemberList);
				FUNC6(s->FarmMemberList);
			}
		}
		FUNC12(s->FarmMemberList);

		FUNC8(fm_list);
	}
}