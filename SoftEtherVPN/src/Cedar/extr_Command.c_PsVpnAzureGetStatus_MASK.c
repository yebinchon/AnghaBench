#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t2 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_7__ {scalar_t__ IsConnected; int /*<<< orphan*/  CurrentHostName; scalar_t__ IsEnabled; } ;
typedef  TYPE_1__ RPC_AZURE_STATUS ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ DDNS_CLIENT_STATUS ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  AZURE_DOMAIN_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 

UINT FUNC11(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_AZURE_STATUS t;
	DDNS_CLIENT_STATUS t2;

	o = FUNC5(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC9(&t, sizeof(t));
	FUNC9(&t2, sizeof(t2));

	// RPC call
	ret = FUNC6(ps->Rpc, &t);

	if (ret == ERR_NO_ERROR)
	{
		ret = FUNC7(ps->Rpc, &t2);
	}

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

		FUNC2(ct, FUNC10("CMD_VpnAzureGetStatus_PRINT_ENABLED"), FUNC10(t.IsEnabled ? "SEC_YES" : "SEC_NO"));

		if (t.IsEnabled)
		{
			wchar_t tmp[MAX_SIZE];

			FUNC8(tmp, sizeof(tmp), L"%S%S", t2.CurrentHostName, AZURE_DOMAIN_SUFFIX);

			FUNC2(ct, FUNC10("CMD_VpnAzureGetStatus_PRINT_CONNECTED"), FUNC10(t.IsConnected ? "SEC_YES" : "SEC_NO"));
			FUNC2(ct, FUNC10("CMD_VpnAzureGetStatus_PRINT_HOSTNAME"), tmp);
		}

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}