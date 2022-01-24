#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  str ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_5__ {int Online; int /*<<< orphan*/  NumFailed; int /*<<< orphan*/  NumConnected; int /*<<< orphan*/  NumTry; int /*<<< orphan*/  CurrentConnectedTime; int /*<<< orphan*/  FirstConnectedTime; int /*<<< orphan*/  StartedTime; int /*<<< orphan*/  LastError; int /*<<< orphan*/  Port; int /*<<< orphan*/  Ip; } ;
typedef  TYPE_1__ RPC_FARM_CONNECTION_STATUS ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 

UINT FUNC16(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_FARM_CONNECTION_STATUS t;
	wchar_t tmp[MAX_SIZE];

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC13(&t, sizeof(t));

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}
	else
	{
		CT *ct = FUNC3();
		char str[MAX_SIZE];

		if (t.Online == false)
		{
			FUNC2(ct, FUNC15("SM_FC_IP"), FUNC15("SM_FC_NOT_CONNECTED"));

			FUNC2(ct, FUNC15("SM_FC_PORT"), FUNC15("SM_FC_NOT_CONNECTED"));
		}
		else
		{
			FUNC6(str, sizeof(str), t.Ip);
			FUNC9(tmp, sizeof(tmp), str);
			FUNC2(ct, FUNC15("SM_FC_IP"), tmp);

			FUNC12(tmp, t.Port);
			FUNC2(ct, FUNC15("SM_FC_PORT"), tmp);
		}

		FUNC2(ct,
			FUNC15("SM_FC_STATUS"),
			t.Online ? FUNC15("SM_FC_ONLINE") : FUNC15("SM_FC_OFFLINE"));

		if (t.Online == false)
		{
			FUNC11(tmp, sizeof(tmp), FUNC15("SM_FC_ERROR_TAG"), FUNC14(t.LastError), t.LastError);
			FUNC2(ct,
				FUNC15("SM_FC_LAST_ERROR"), tmp);
		}

		FUNC5(tmp, sizeof(tmp), FUNC10(t.StartedTime), NULL);
		FUNC2(ct, FUNC15("SM_FC_START_TIME"), tmp);

		FUNC5(tmp, sizeof(tmp), FUNC10(t.FirstConnectedTime), NULL);
		FUNC2(ct, FUNC15("SM_FC_FIRST_TIME"), tmp);

		//if (t.Online == false)
		{
			FUNC5(tmp, sizeof(tmp), FUNC10(t.CurrentConnectedTime), NULL);
			FUNC2(ct, FUNC15("SM_FC_CURRENT_TIME"), tmp);
		}

		FUNC12(tmp, t.NumTry);
		FUNC2(ct, FUNC15("SM_FC_NUM_TRY"), tmp);

		FUNC12(tmp, t.NumConnected);
		FUNC2(ct, FUNC15("SM_FC_NUM_CONNECTED"), tmp);

		FUNC12(tmp, t.NumFailed);
		FUNC2(ct, FUNC15("SM_FC_NUM_FAILED"), tmp);

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}