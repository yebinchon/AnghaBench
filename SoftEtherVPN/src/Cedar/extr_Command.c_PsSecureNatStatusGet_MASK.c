#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_13__ {int /*<<< orphan*/ * HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_12__ {scalar_t__ IsRawIpMode; scalar_t__ IsKernelMode; int /*<<< orphan*/  NumDhcpClients; int /*<<< orphan*/  NumDnsSessions; int /*<<< orphan*/  NumIcmpSessions; int /*<<< orphan*/  NumUdpSessions; int /*<<< orphan*/  NumTcpSessions; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_NAT_STATUS ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC14(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_NAT_STATUS t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC12("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC6(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC11(&t, sizeof(t));
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
		wchar_t tmp[MAX_SIZE];
		CT *ct = FUNC3();

		FUNC9(tmp, sizeof(tmp), ps->HubName);
		FUNC2(ct, FUNC12("SM_HUB_COLUMN_1"), tmp);

		FUNC10(tmp, sizeof(tmp), FUNC12("SM_SNAT_NUM_SESSION"), t.NumTcpSessions);
		FUNC2(ct, FUNC12("NM_STATUS_TCP"), tmp);

		FUNC10(tmp, sizeof(tmp), FUNC12("SM_SNAT_NUM_SESSION"), t.NumUdpSessions);
		FUNC2(ct, FUNC12("NM_STATUS_UDP"), tmp);

		FUNC10(tmp, sizeof(tmp), FUNC12("SM_SNAT_NUM_SESSION"), t.NumIcmpSessions);
		FUNC2(ct, FUNC12("NM_STATUS_ICMP"), tmp);

		FUNC10(tmp, sizeof(tmp), FUNC12("SM_SNAT_NUM_SESSION"), t.NumDnsSessions);
		FUNC2(ct, FUNC12("NM_STATUS_DNS"), tmp);

		FUNC10(tmp, sizeof(tmp), FUNC12("SM_SNAT_NUM_CLIENT"), t.NumDhcpClients);
		FUNC2(ct, FUNC12("NM_STATUS_DHCP"), tmp);

		FUNC2(ct, FUNC12("SM_SNAT_IS_KERNEL"), t.IsKernelMode ? FUNC12("SEC_YES") : FUNC12("SEC_NO"));
		FUNC2(ct, FUNC12("SM_SNAT_IS_RAW"), t.IsRawIpMode ? FUNC12("SEC_YES") : FUNC12("SEC_NO"));

		FUNC1(ct, c);
	}

	FUNC5(&t);

	FUNC4(o);

	return 0;
}