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
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  nic ;
typedef  int /*<<< orphan*/  hub ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_7__ {scalar_t__ Active; scalar_t__ Online; int /*<<< orphan*/  HubName; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_LOCALBRIDGE ;
typedef  TYPE_2__ RPC_ENUM_LOCALBRIDGE ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_LOCALBRIDGE t;
	UINT i;
	CT *ct;

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC11(&t, sizeof(t));

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}

	ct = FUNC4();

	FUNC3(ct, FUNC12("SM_BRIDGE_COLUMN_1"), false);
	FUNC3(ct, FUNC12("SM_BRIDGE_COLUMN_2"), false);
	FUNC3(ct, FUNC12("SM_BRIDGE_COLUMN_3"), false);
	FUNC3(ct, FUNC12("SM_BRIDGE_COLUMN_4"), false);

	for (i = 0;i < t.NumItem;i++)
	{
		RPC_LOCALBRIDGE *e = &t.Items[i];
		wchar_t name[MAX_SIZE];
		wchar_t nic[MAX_SIZE];
		wchar_t hub[MAX_SIZE];
		wchar_t *status = FUNC12("SM_BRIDGE_OFFLINE");

		FUNC10(name, i + 1);
		FUNC9(nic, sizeof(nic), e->DeviceName);
		FUNC9(hub, sizeof(hub), e->HubName);

		if (e->Online)
		{
			status = e->Active ? FUNC12("SM_BRIDGE_ONLINE") : FUNC12("SM_BRIDGE_ERROR");
		}

		FUNC2(ct, name, hub, nic, status);
	}

	FUNC1(ct, c);

	FUNC6(&t);

	FUNC5(o);

	return 0;
}