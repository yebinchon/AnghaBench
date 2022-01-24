#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  time ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  num2 ;
typedef  int /*<<< orphan*/  num1 ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  group ;
typedef  int /*<<< orphan*/  exp ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  (* Write ) (TYPE_7__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_21__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_20__ {scalar_t__ NumUser; TYPE_4__* Users; int /*<<< orphan*/  HubName; } ;
struct TYPE_17__ {scalar_t__ UnicastCount; scalar_t__ BroadcastBytes; scalar_t__ UnicastBytes; } ;
struct TYPE_16__ {scalar_t__ UnicastCount; scalar_t__ BroadcastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_18__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
struct TYPE_19__ {scalar_t__ LastLoginTime; int IsExpiresFilled; scalar_t__ Expires; int IsTrafficFilled; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; TYPE_3__ Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Name; } ;
typedef  TYPE_4__ RPC_ENUM_USER_ITEM ;
typedef  TYPE_5__ RPC_ENUM_USER ;
typedef  TYPE_6__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_7__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_7__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*,int /*<<< orphan*/ ) ; 

UINT FUNC21(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_USER t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC19("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC9(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC18(&t, sizeof(t));
	FUNC11(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}
	else
	{
		UINT i;
		CT *ct = FUNC4();

		FUNC3(ct, FUNC19("SM_USER_COLUMN_1"), false);
		FUNC3(ct, FUNC19("SM_USER_COLUMN_2"), false);
		FUNC3(ct, FUNC19("SM_USER_COLUMN_3"), false);
		FUNC3(ct, FUNC19("SM_USER_COLUMN_4"), false);
		FUNC3(ct, FUNC19("SM_USER_COLUMN_5"), false);
		FUNC3(ct, FUNC19("SM_USER_COLUMN_6"), false);
		FUNC3(ct, FUNC19("SM_USER_COLUMN_7"), false);
		FUNC3(ct, FUNC19("SM_LICENSE_COLUMN_5"), false);
		FUNC3(ct, FUNC19("SM_SESS_COLUMN_6"), false);
		FUNC3(ct, FUNC19("SM_SESS_COLUMN_7"), false);

		for (i = 0;i < t.NumUser;i++)
		{
			RPC_ENUM_USER_ITEM *e = &t.Users[i];
			wchar_t name[MAX_SIZE];
			wchar_t group[MAX_SIZE];
			wchar_t num[MAX_SIZE];
			wchar_t time[MAX_SIZE];
			wchar_t exp[MAX_SIZE];
			wchar_t num1[64], num2[64];

			FUNC13(name, sizeof(name), e->Name);

			if (FUNC12(e->GroupName) != 0)
			{
				FUNC13(group, sizeof(group), e->GroupName);
			}
			else
			{
				FUNC15(group, sizeof(group), FUNC19("SM_NO_GROUP"));
			}

			FUNC17(num, e->NumLogin);

			FUNC8(time, sizeof(time), FUNC14(e->LastLoginTime), NULL);

			if (e->IsExpiresFilled == false)
			{
				FUNC15(exp, sizeof(exp), FUNC19("CM_ST_NONE"));
			}
			else
			{
				if (e->Expires == 0)
				{
					FUNC15(exp, sizeof(exp), FUNC19("SM_LICENSE_NO_EXPIRES"));
				}
				else
				{
					FUNC8(exp, sizeof(exp), FUNC14(e->Expires), NULL);
				}
			}

			if (e->IsTrafficFilled == false)
			{
				FUNC15(num1, sizeof(num1), FUNC19("CM_ST_NONE"));
				FUNC15(num2, sizeof(num2), FUNC19("CM_ST_NONE"));
			}
			else
			{
				FUNC16(num1, sizeof(num1),
					e->Traffic.Recv.BroadcastBytes + e->Traffic.Recv.UnicastBytes +
					e->Traffic.Send.BroadcastBytes + e->Traffic.Send.UnicastBytes);

				FUNC16(num2, sizeof(num2),
					e->Traffic.Recv.BroadcastCount + e->Traffic.Recv.UnicastCount +
					e->Traffic.Send.BroadcastBytes + e->Traffic.Send.UnicastCount);
			}

			FUNC2(ct,
				name, e->Realname, group, e->Note, FUNC7(e->AuthType),
				num, time, exp, num1, num2);
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}