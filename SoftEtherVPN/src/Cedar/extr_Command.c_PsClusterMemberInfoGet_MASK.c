#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_11__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_10__ {char* Hostname; scalar_t__ Point; scalar_t__ Weight; scalar_t__ NumPort; scalar_t__* Ports; scalar_t__ NumFarmHub; scalar_t__ NumSessions; scalar_t__ NumTcpConnections; TYPE_1__* FarmHubs; int /*<<< orphan*/  Ip; int /*<<< orphan*/  ConnectedTime; scalar_t__ Controller; int /*<<< orphan*/  Id; } ;
struct TYPE_9__ {scalar_t__ HubName; scalar_t__ DynamicHub; } ;
typedef  TYPE_2__ RPC_FARM_INFO ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC17 (char*) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_FARM_INFO t;
	CT *ct;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[id]", &CmdPrompt, FUNC17("CMD_ClusterMemberInfoGet_PROMPT_ID"), NULL, NULL},
	};

	o = FUNC9(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));
	t.Id = FUNC14(FUNC7(o, "[id]"));

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}

	ct = FUNC3();

	{
		wchar_t tmp[MAX_SIZE];
		char str[MAX_SIZE];
		UINT i;

		FUNC2(ct, FUNC17("SM_FMINFO_TYPE"),
			t.Controller ? FUNC17("SM_FARM_CONTROLLER") : FUNC17("SM_FARM_MEMBER"));

		FUNC6(tmp, sizeof(tmp), FUNC12(t.ConnectedTime), NULL);
		FUNC2(ct, FUNC17("SM_FMINFO_CONNECT_TIME"), tmp);

		FUNC8(str, sizeof(str), t.Ip);
		FUNC11(tmp, sizeof(tmp), str);
		FUNC2(ct, FUNC17("SM_FMINFO_IP"), tmp);

		FUNC11(tmp, sizeof(tmp), t.Hostname);
		FUNC2(ct, FUNC17("SM_FMINFO_HOSTNAME"), tmp);

		FUNC15(tmp, t.Point);
		FUNC2(ct, FUNC17("SM_FMINFO_POINT"), tmp);

		FUNC15(tmp, t.Weight);
		FUNC2(ct, FUNC17("SM_FMINFO_WEIGHT"), tmp);

		FUNC15(tmp, t.NumPort);
		FUNC2(ct, FUNC17("SM_FMINFO_NUM_PORT"), tmp);

		for (i = 0;i < t.NumPort;i++)
		{
			wchar_t tmp2[MAX_SIZE];
			FUNC13(tmp, sizeof(tmp), FUNC17("SM_FMINFO_PORT"), i + 1);
			FUNC15(tmp2, t.Ports[i]);
			FUNC2(ct, tmp, tmp2);
		}

		FUNC15(tmp, t.NumFarmHub);
		FUNC2(ct, FUNC17("SM_FMINFO_NUM_HUB"), tmp);

		for (i = 0;i < t.NumFarmHub;i++)
		{
			wchar_t tmp2[MAX_SIZE];
			FUNC13(tmp, sizeof(tmp), FUNC17("SM_FMINFO_HUB"), i + 1);
			FUNC13(tmp2, sizeof(tmp2),
				t.FarmHubs[i].DynamicHub ? FUNC17("SM_FMINFO_HUB_TAG_2") : FUNC17("SM_FMINFO_HUB_TAG_1"),
				t.FarmHubs[i].HubName);
			FUNC2(ct, tmp, tmp2);
		}

		FUNC15(tmp, t.NumSessions);
		FUNC2(ct, FUNC17("SM_FMINFO_NUM_SESSION"), tmp);

		FUNC15(tmp, t.NumTcpConnections);
		FUNC2(ct, FUNC17("SM_FMINFO_NUN_CONNECTION"), tmp);
	}

	FUNC1(ct, c);

	FUNC5(&t);

	FUNC4(o);

	return 0;
}