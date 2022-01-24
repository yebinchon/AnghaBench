#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_21__ {char* Name; int /*<<< orphan*/  lock; TYPE_1__* Policy; int /*<<< orphan*/  Note; int /*<<< orphan*/  RealName; } ;
typedef  TYPE_3__ USERGROUP ;
struct TYPE_22__ {int /*<<< orphan*/  lock; TYPE_3__* Group; } ;
typedef  TYPE_4__ USER ;
typedef  size_t UINT ;
struct TYPE_27__ {TYPE_5__* Server; } ;
struct TYPE_26__ {TYPE_2__* HubDb; } ;
struct TYPE_25__ {char* HubName; size_t NumGroup; TYPE_6__* Groups; } ;
struct TYPE_24__ {char* Name; int DenyAccess; scalar_t__ NumUsers; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; } ;
struct TYPE_23__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_20__ {int /*<<< orphan*/  UserList; int /*<<< orphan*/  GroupList; } ;
struct TYPE_19__ {int Access; } ;
typedef  TYPE_5__ SERVER ;
typedef  TYPE_6__ RPC_ENUM_GROUP_ITEM ;
typedef  TYPE_7__ RPC_ENUM_GROUP ;
typedef  TYPE_8__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_9__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_NOT_SUPPORTED ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,int) ; 
 TYPE_6__* FUNC16 (int) ; 

UINT FUNC17(ADMIN *a, RPC_ENUM_GROUP *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];

	FUNC10(hubname, sizeof(hubname), t->HubName);

	CHECK_RIGHT;

	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}


	FUNC7(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC13(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC0(h);
	{
		UINT i, j;

		FUNC2(t);
		FUNC15(t, sizeof(RPC_ENUM_GROUP));
		FUNC10(t->HubName, sizeof(t->HubName), hubname);

		t->NumGroup = FUNC5(h->HubDb->GroupList);
		t->Groups = FUNC16(sizeof(RPC_ENUM_GROUP_ITEM) * t->NumGroup);

		for (i = 0;i < t->NumGroup;i++)
		{
			RPC_ENUM_GROUP_ITEM *e = &t->Groups[i];
			USERGROUP *g = FUNC4(h->HubDb->GroupList, i);

			FUNC6(g->lock);
			{
				FUNC10(e->Name, sizeof(e->Name), g->Name);
				FUNC11(e->Realname, sizeof(e->Realname), g->RealName);
				FUNC11(e->Note, sizeof(e->Note), g->Note);
				if (g->Policy != NULL)
				{
					if (g->Policy->Access == false)
					{
						e->DenyAccess = true;
					}
				}
			}
			FUNC12(g->lock);

			e->NumUsers = 0;


			FUNC8(h->HubDb->UserList);
			{
				for (j = 0;j < FUNC5(h->HubDb->UserList);j++)
				{
					USER *u = FUNC4(h->HubDb->UserList, j);

					FUNC6(u->lock);
					{
						if (u->Group == g)
						{
							e->NumUsers++;
						}
					}
					FUNC12(u->lock);
				}
			}
			FUNC14(h->HubDb->UserList);
		}
	}
	FUNC1(h);

	FUNC9(h);

	return ERR_NO_ERROR;
}