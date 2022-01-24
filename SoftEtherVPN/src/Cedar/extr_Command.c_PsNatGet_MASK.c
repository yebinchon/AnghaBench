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
typedef  int /*<<< orphan*/  t ;
struct TYPE_11__ {scalar_t__ SaveLog; int /*<<< orphan*/  NatUdpTimeout; int /*<<< orphan*/  NatTcpTimeout; int /*<<< orphan*/  Mtu; scalar_t__ UseNat; int /*<<< orphan*/  HubName; } ;
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
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	VH_OPTION t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC10("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC5(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC9(&t, sizeof(t));
	FUNC7(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC6(ps->Rpc, &t);

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

		// Use the virtual NAT function
		FUNC2(ct, FUNC10("CMD_NatGet_Column_USE"), t.UseNat ? FUNC10("SEC_YES") : FUNC10("SEC_NO"));

		// MTU value
		FUNC8(tmp, t.Mtu);
		FUNC2(ct, FUNC10("CMD_NetGet_Column_MTU"), tmp);

		// TCP session timeout (in seconds)
		FUNC8(tmp, t.NatTcpTimeout);
		FUNC2(ct, FUNC10("CMD_NatGet_Column_TCP"), tmp);

		// UDP session timeout (in seconds)
		FUNC8(tmp, t.NatUdpTimeout);
		FUNC2(ct, FUNC10("CMD_NatGet_Column_UDP"), tmp);

		// To save the log
		FUNC2(ct, FUNC10("CMD_SecureNatHostGet_Column_LOG"), t.SaveLog ? FUNC10("SEC_YES") : FUNC10("SEC_NO"));

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}