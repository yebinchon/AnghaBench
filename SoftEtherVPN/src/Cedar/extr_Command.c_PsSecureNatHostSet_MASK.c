#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_16__ {int /*<<< orphan*/  Mask; int /*<<< orphan*/  Ip; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_17__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  TYPE_5__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalIp ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	VH_OPTION t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"MAC", &CmdPrompt, FUNC16("CMD_SecureNatHostSet_Prompt_MAC"), NULL, NULL},
		{"IP", &CmdPrompt, FUNC16("CMD_SecureNatHostSet_Prompt_IP"), *CmdEvalIp, NULL},
		{"MASK", &CmdPrompt, FUNC16("CMD_SecureNatHostSet_Prompt_MASK"), *CmdEvalIp, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC16("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC15(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC3(o);
		return ret;
	}
	else
	{
		char *mac, *ip, *mask;
		bool ok = true;

		FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);

		mac = FUNC4(o, "MAC");
		ip = FUNC4(o, "IP");
		mask = FUNC4(o, "MASK");

		if (FUNC5(mac) == false)
		{
			BUF *b = FUNC11(mac);

			if (b == NULL || b->Size != 6)
			{
				ok = false;
			}
			else
			{
				FUNC1(t.MacAddress, b->Buf, 6);
			}

			FUNC2(b);
		}

		if (FUNC5(ip) == false)
		{
			if (FUNC6(ip) == false)
			{
				ok = false;
			}
			else
			{
				UINT u = FUNC13(ip);

				if (u == 0 || u == 0xffffffff)
				{
					ok = false;
				}
				else
				{
					FUNC14(&t.Ip, u);
				}
			}
		}

		if (FUNC5(mask) == false)
		{
			if (FUNC6(mask) == false)
			{
				ok = false;
			}
			else
			{
				FUNC12(&t.Mask, mask);
			}
		}

		if (ok == false)
		{
			// Parameter is invalid
			ret = ERR_INVALID_PARAMETER;
			FUNC0(c, ret);
			FUNC3(o);
			return ret;
		}
		else
		{
			ret = FUNC9(ps->Rpc, &t);

			if (ret != ERR_NO_ERROR)
			{
				// An error has occured
				FUNC0(c, ret);
				FUNC3(o);
				return ret;
			}
		}
	}

	FUNC3(o);

	return 0;
}