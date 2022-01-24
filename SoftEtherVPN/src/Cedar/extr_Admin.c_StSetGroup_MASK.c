#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  lock; void* Note; void* RealName; } ;
typedef  TYPE_1__ USERGROUP ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_14__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Policy; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  HubName; } ;
struct TYPE_13__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_SET_GROUP ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

UINT FUNC18(ADMIN *a, RPC_SET_GROUP *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;

	if (FUNC8(t->Name) || FUNC9(t->Name) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC11(c);
	{
		h = FUNC5(c, t->HubName);
	}
	FUNC17(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC6(h, "no_change_groups") != 0)
	{
		FUNC13(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC2(h);
	{
		USERGROUP *g = FUNC1(h, t->Name);
		if (g == NULL)
		{
			ret = ERR_OBJECT_NOT_FOUND;
		}
		else
		{
			FUNC10(g->lock);
			{
				FUNC4(g->RealName);
				FUNC4(g->Note);
				g->RealName = FUNC15(t->Realname);
				g->Note = FUNC15(t->Note);
			}
			FUNC16(g->lock);

			FUNC14(g, t->Policy);

			FUNC12(g);

			FUNC0(a, h, "LA_SET_GROUP", t->Name);
		}
	}
	FUNC3(h);

	FUNC13(h);

	FUNC7(s);

	return ret;
}