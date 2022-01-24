#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_11__ {int /*<<< orphan*/  DhcpPushRoutes; scalar_t__ ApplyDhcpPushRoutes; scalar_t__ SaveLog; int /*<<< orphan*/  DhcpDomainName; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; int /*<<< orphan*/  DhcpExpireTimeSpan; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; scalar_t__ UseDhcp; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
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
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC16(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	VH_OPTION t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC14("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC13(&t, sizeof(t));
	FUNC9(t.HubName, sizeof(t.HubName), ps->HubName);

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
		wchar_t tmp[MAX_SIZE];
		CT *ct = FUNC3();

		// To use the virtual DHCP function
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_USE"), t.UseDhcp ? FUNC14("SEC_YES") : FUNC14("SEC_NO"));

		// Start address of the distributing address zone
		FUNC6(tmp, sizeof(tmp), &t.DhcpLeaseIPStart);
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_IP1"), tmp);

		// End address of the distributing address zone
		FUNC6(tmp, sizeof(tmp), &t.DhcpLeaseIPEnd);
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_IP2"), tmp);

		// Subnet mask
		FUNC6(tmp, sizeof(tmp), &t.DhcpSubnetMask);
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_MASK"), tmp);

		// Lease time (in seconds)
		FUNC12(tmp, t.DhcpExpireTimeSpan);
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_LEASE"), tmp);

		// Default gateway address
		FUNC11(tmp, sizeof(tmp), FUNC14("SEC_NONE"));
		if (FUNC5(&t.DhcpGatewayAddress) != 0)
		{
			FUNC6(tmp, sizeof(tmp), &t.DhcpGatewayAddress);
		}
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_GW"), tmp);

		// DNS server address 1
		FUNC11(tmp, sizeof(tmp), FUNC14("SEC_NONE"));
		if (FUNC5(&t.DhcpDnsServerAddress) != 0)
		{
			FUNC6(tmp, sizeof(tmp), &t.DhcpDnsServerAddress);
		}
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_DNS"), tmp);

		// DNS server address 2
		FUNC11(tmp, sizeof(tmp), FUNC14("SEC_NONE"));
		if (FUNC5(&t.DhcpDnsServerAddress2) != 0)
		{
			FUNC6(tmp, sizeof(tmp), &t.DhcpDnsServerAddress2);
		}
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_DNS2"), tmp);

		// Domain name
		FUNC10(tmp, sizeof(tmp), t.DhcpDomainName);
		FUNC2(ct, FUNC14("CMD_DhcpGet_Column_DOMAIN"), tmp);

		// To save the log
		FUNC2(ct, FUNC14("CMD_SecureNatHostGet_Column_LOG"), t.SaveLog ? FUNC14("SEC_YES") : FUNC14("SEC_NO"));

		// Push routing table
		if (t.ApplyDhcpPushRoutes)
		{
			FUNC10(tmp, sizeof(tmp), t.DhcpPushRoutes);
			FUNC2(ct, FUNC14("CMD_DhcpGet_Column_PUSHROUTE"), tmp);
		}

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}