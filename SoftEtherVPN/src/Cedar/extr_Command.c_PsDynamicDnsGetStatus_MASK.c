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
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Err_IPv4; scalar_t__ Err_IPv6; int /*<<< orphan*/  CurrentIPv6; int /*<<< orphan*/  CurrentIPv4; int /*<<< orphan*/  DnsSuffix; int /*<<< orphan*/  CurrentHostName; int /*<<< orphan*/  CurrentFqdn; } ;
struct TYPE_5__ {int /*<<< orphan*/  Rpc; } ;
typedef  TYPE_1__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ DDNS_CLIENT_STATUS ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	DDNS_CLIENT_STATUS t;

	o = FUNC6(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC10(&t, sizeof(t));

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
		CT *ct = FUNC3();
		wchar_t tmp[MAX_SIZE];

		// FQDN
		if (FUNC5(t.CurrentFqdn) == false)
		{
			FUNC8(tmp, sizeof(tmp), t.CurrentFqdn);
		}
		else
		{
			FUNC9(tmp, sizeof(tmp), FUNC12("SM_DDNS_FQDN_EMPTY"));
		}
		FUNC2(ct, FUNC12("CMD_DynamicDnsGetStatus_PRINT_FQDN"), tmp);

		// Hostname
		if (FUNC5(t.CurrentHostName) == false)
		{
			FUNC8(tmp, sizeof(tmp), t.CurrentHostName);
		}
		else
		{
			FUNC9(tmp, sizeof(tmp), FUNC12("SM_DDNS_FQDN_EMPTY"));
		}
		FUNC2(ct, FUNC12("CMD_DynamicDnsGetStatus_PRINT_HOSTNAME"), tmp);

		// Suffix
		if (FUNC5(t.DnsSuffix) == false)
		{
			FUNC8(tmp, sizeof(tmp), t.DnsSuffix);
		}
		else
		{
			FUNC9(tmp, sizeof(tmp), FUNC12("SM_DDNS_FQDN_EMPTY"));
		}
		FUNC2(ct, FUNC12("CMD_DynamicDnsGetStatus_PRINT_SUFFIX"), tmp);

		// IPv4
		if (t.Err_IPv4 == ERR_NO_ERROR)
		{
			FUNC8(tmp, sizeof(tmp), t.CurrentIPv4);
		}
		else
		{
			FUNC9(tmp, sizeof(tmp), FUNC11(t.Err_IPv4));
		}
		FUNC2(ct, FUNC12("CMD_DynamicDnsGetStatus_PRINT_IPv4"), tmp);

		// IPv6
		if (t.Err_IPv6 == ERR_NO_ERROR)
		{
			FUNC8(tmp, sizeof(tmp), t.CurrentIPv6);
		}
		else
		{
			FUNC9(tmp, sizeof(tmp), FUNC11(t.Err_IPv6));
		}
		FUNC2(ct, FUNC12("CMD_DynamicDnsGetStatus_PRINT_IPv6"), tmp);

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}