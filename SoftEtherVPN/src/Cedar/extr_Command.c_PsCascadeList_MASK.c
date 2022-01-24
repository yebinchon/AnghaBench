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
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {scalar_t__ NumLink; TYPE_1__* Links; int /*<<< orphan*/  HubName; } ;
struct TYPE_13__ {int Online; scalar_t__ LastError; int /*<<< orphan*/  AccountName; scalar_t__ Connected; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ConnectedTime; } ;
typedef  TYPE_1__ RPC_ENUM_LINK_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LINK ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC19(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_LINK t;
	
	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC17("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC15(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC9(ps->Rpc, &t);

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

		FUNC3(ct, FUNC17("SM_LINK_COLUMN_1"), false);
		FUNC3(ct, FUNC17("SM_LINK_COLUMN_2"), false);
		FUNC3(ct, FUNC17("SM_LINK_COLUMN_3"), false);
		FUNC3(ct, FUNC17("SM_LINK_COLUMN_4"), false);
		FUNC3(ct, FUNC17("SM_LINK_COLUMN_5"), false);

		for (i = 0;i < t.NumLink;i++)
		{
			RPC_ENUM_LINK_ITEM *e = &t.Links[i];
			wchar_t tmp1[MAX_SIZE];
			wchar_t tmp2[MAX_SIZE];
			wchar_t tmp3[MAX_SIZE];
			wchar_t tmp4[MAX_SIZE];

			FUNC7(tmp1, sizeof(tmp1), FUNC12(e->ConnectedTime), NULL);
			FUNC11(tmp2, sizeof(tmp2), e->Hostname);
			FUNC11(tmp3, sizeof(tmp3), e->HubName);

			if (e->Online == false)
			{
				FUNC14(tmp4, sizeof(tmp4), FUNC17("SM_LINK_STATUS_OFFLINE"));
			}
			else
			{
				if (e->Connected)
				{
					FUNC14(tmp4, sizeof(tmp4), FUNC17("SM_LINK_STATUS_ONLINE"));
				}
				else
				{
					if (e->LastError != 0)
					{
						FUNC13(tmp4, sizeof(tmp4), FUNC17("SM_LINK_STATUS_ERROR"), e->LastError, FUNC16(e->LastError));
					}
					else
					{
						FUNC14(tmp4, sizeof(tmp4), FUNC17("SM_LINK_CONNECTING"));
					}
				}
			}

			FUNC2(ct, e->AccountName, tmp4, tmp1, tmp2, tmp3);
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}