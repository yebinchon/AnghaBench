#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  ver ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  mac ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {int /*<<< orphan*/  Version; int /*<<< orphan*/  MacAddress; scalar_t__ Enabled; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef  TYPE_3__ PC ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_ENUM_VLAN t;

	// Get the parameter list
	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC10(&t, sizeof(t));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		CT *ct;
		UINT i;

		// Success
		ct = FUNC6();
		FUNC5(ct, FUNC11("CM_VLAN_COLUMN_1"), false);
		FUNC5(ct, FUNC11("CM_VLAN_COLUMN_2"), false);
		FUNC5(ct, FUNC11("CM_VLAN_COLUMN_3"), false);
		FUNC5(ct, FUNC11("CM_VLAN_COLUMN_4"), false);

		for (i = 0;i < t.NumItem;i++)
		{
			wchar_t name[MAX_SIZE];
			wchar_t mac[MAX_SIZE];
			wchar_t ver[MAX_SIZE];
			wchar_t *status;
			RPC_CLIENT_ENUM_VLAN_ITEM *v = t.Items[i];

			// Device name
			FUNC9(name, sizeof(name), v->DeviceName);

			// State
			status = v->Enabled ? FUNC11("CM_VLAN_ENABLED") : FUNC11("CM_VLAN_DISABLED");

			// MAC address
			FUNC9(mac, sizeof(mac), v->MacAddress);

			// Version
			FUNC9(ver, sizeof(ver), v->Version);

			FUNC4(ct,
				name, status, mac, ver);
		}

		FUNC3(ct, c, true);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC2(c, ret);
	}

	FUNC1(&t);

	// Release of the parameter list
	FUNC7(o);

	return ret;
}