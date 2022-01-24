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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {scalar_t__ NumGroup; TYPE_1__* Groups; int /*<<< orphan*/  HubName; } ;
struct TYPE_13__ {int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_GROUP_ITEM ;
typedef  TYPE_2__ RPC_ENUM_GROUP ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC15(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_GROUP t;

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC13("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	FUNC12(&t, sizeof(t));
	FUNC9(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}
	else
	{
		CT *ct = FUNC4();
		UINT i;

		FUNC3(ct, FUNC13("SM_GROUPLIST_NAME"), false);
		FUNC3(ct, FUNC13("SM_GROUPLIST_REALNAME"), false);
		FUNC3(ct, FUNC13("SM_GROUPLIST_NOTE"), false);
		FUNC3(ct, FUNC13("SM_GROUPLIST_NUMUSERS"), false);

		for (i = 0;i < t.NumGroup;i++)
		{
			wchar_t tmp1[MAX_SIZE];
			wchar_t tmp2[MAX_SIZE];
			RPC_ENUM_GROUP_ITEM *e = &t.Groups[i];

			FUNC10(tmp1, sizeof(tmp1), e->Name);
			FUNC11(tmp2, e->NumUsers);

			FUNC2(ct, tmp1, e->Realname, e->Note, tmp2);
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}