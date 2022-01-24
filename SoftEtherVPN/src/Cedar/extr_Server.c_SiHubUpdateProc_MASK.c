#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int Me; } ;
struct TYPE_15__ {int LastVersion; int CurrentVersion; int Offline; int /*<<< orphan*/  Type; int /*<<< orphan*/  Name; TYPE_1__* Cedar; } ;
struct TYPE_14__ {scalar_t__ ServerType; int /*<<< orphan*/ * FarmMemberList; } ;
struct TYPE_13__ {TYPE_2__* Server; } ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ HUB ;
typedef  TYPE_4__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(HUB *h)
{
	SERVER *s;
	UINT i;
	// Validate arguments
	if (h == NULL || h->Cedar == NULL || h->Cedar->Server == NULL || h->Cedar->Server->ServerType != SERVER_TYPE_FARM_CONTROLLER)
	{
		return;
	}

	s = h->Cedar->Server;

	if (s->FarmMemberList == NULL)
	{
		return;
	}

	if (h->LastVersion != h->CurrentVersion || h->CurrentVersion == 0)
	{
		LIST *fm_list;
		if (h->CurrentVersion == 0)
		{
			h->CurrentVersion = 1;
		}
		h->LastVersion = h->CurrentVersion;

		FUNC1("SiHubUpdateProc HUB=%s, Ver=%u, Type=%u, Offline=%u\n", h->Name, h->CurrentVersion,
			h->Type, h->Offline);

		fm_list = FUNC6(NULL);

		FUNC5(s->FarmMemberList);
		{
			while (true)
			{
				bool escape = true;
				// Update the HUB on all members
				for (i = 0;i < FUNC4(s->FarmMemberList);i++)
				{
					FARM_MEMBER *f = FUNC3(s->FarmMemberList, i);

					if (FUNC2(fm_list, f) == false)
					{
						FUNC0(fm_list, f);
						escape = false;

						if (f->Me == false)
						{
							FUNC8(s, f, h);
						}

						break;
					}
				}

				if (escape)
				{
					break;
				}

				FUNC10(s->FarmMemberList);
				FUNC5(s->FarmMemberList);
			}
		}
		FUNC10(s->FarmMemberList);

		FUNC7(fm_list);
	}

	if (h->Offline == false)
	{
		FUNC9(h);
	}
}