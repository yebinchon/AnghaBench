#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_6__ {scalar_t__ Weight; scalar_t__ ServerType; scalar_t__ NumPort; int /*<<< orphan*/  ControllerPort; int /*<<< orphan*/  ControllerName; int /*<<< orphan*/ * Ports; int /*<<< orphan*/  PublicIp; scalar_t__ ControllerOnly; } ;
typedef  TYPE_1__ RPC_FARM ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ FARM_DEFAULT_WEIGHT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC10 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int,scalar_t__*) ; 
 int FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 scalar_t__* FUNC17 (char*) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret;
	RPC_FARM t;
	CT *ct;

	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));

	ret = FUNC9(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}

	if (t.Weight == 0)
	{
		t.Weight = FARM_DEFAULT_WEIGHT;
	}

	// Show the cluster configuration
	ct = FUNC3();

	FUNC2(ct, FUNC17("CMD_ClusterSettingGet_Current"),
		FUNC6(t.ServerType));

	if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		FUNC2(ct, FUNC17("CMD_ClusterSettingGet_ControllerOnly"), t.ControllerOnly ? FUNC17("SEC_YES") : FUNC17("SEC_NO"));
	}

	if (t.ServerType != SERVER_TYPE_STANDALONE)
	{
		wchar_t tmp[MAX_SIZE];

		FUNC15(tmp, t.Weight);

		FUNC2(ct, FUNC17("CMD_ClusterSettingGet_Weight"), tmp);
	}

	if (t.ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		wchar_t tmp[MAX_SIZE];
		UINT i;

		// Public IP address
		if (t.PublicIp != 0)
		{
			FUNC7(tmp, sizeof(tmp), t.PublicIp);
		}
		else
		{
			FUNC13(tmp, sizeof(tmp), FUNC17("CMD_ClusterSettingGet_None"));
		}

		FUNC2(ct, FUNC17("CMD_ClusterSettingGet_PublicIp"), tmp);

		// Public port list
		tmp[0] = 0;
		for (i = 0;i < t.NumPort;i++)
		{
			wchar_t tmp2[64];

			FUNC11(tmp2, sizeof(tmp2), L"%u, ", t.Ports[i]);

			FUNC12(tmp, sizeof(tmp), tmp2);
		}

		if (FUNC10(tmp, L", "))
		{
			tmp[FUNC14(tmp) - 2] = 0;
		}

		FUNC2(ct, FUNC17("CMD_ClusterSettingGet_PublicPorts"), tmp);

		// Controller to connect
		FUNC11(tmp, sizeof(tmp), L"%S:%u", t.ControllerName, t.ControllerPort);
		FUNC2(ct, FUNC17("CMD_ClusterSettingGet_Controller"), tmp);
	}

	FUNC1(ct, c);

	FUNC5(&t);
	FUNC4(o);

	return 0;
}