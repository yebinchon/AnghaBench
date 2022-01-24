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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {int /*<<< orphan*/ * HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_13__ {int /*<<< orphan*/  MaxSession; scalar_t__ NoEnum; } ;
struct TYPE_14__ {int /*<<< orphan*/  HubType; scalar_t__ Online; TYPE_1__ HubOption; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_CREATE_HUB ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ *) ; 

UINT FUNC16(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_HUB t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC13("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC6(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC12(&t, sizeof(t));

	FUNC8(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC7(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}
	else
	{
		CT *ct;
		wchar_t tmp[MAX_SIZE];

		FUNC9(tmp, sizeof(tmp), FUNC13("CMD_OptionsGet_TITLE"), ps->HubName);
		c->Write(c, tmp);

		// Display settings
		ct = FUNC3();

		FUNC2(ct, FUNC13("CMD_OptionsGet_ENUM"),
			t.HubOption.NoEnum ? FUNC13("CMD_MSG_DENY") : FUNC13("CMD_MSG_ALLOW"));

		if (t.HubOption.MaxSession == 0)
		{
			FUNC10(tmp, sizeof(tmp), FUNC13("CMD_MSG_INFINITE"));
		}
		else
		{
			FUNC11(tmp, t.HubOption.MaxSession);
		}
		FUNC2(ct, FUNC13("CMD_OptionsGet_MAXSESSIONS"), tmp);

		FUNC2(ct, FUNC13("CMD_OptionsGet_STATUS"), t.Online ? FUNC13("SM_HUB_ONLINE") : FUNC13("SM_HUB_OFFLINE"));

		FUNC2(ct, FUNC13("CMD_OptionsGet_TYPE"), FUNC5(t.HubType));

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}