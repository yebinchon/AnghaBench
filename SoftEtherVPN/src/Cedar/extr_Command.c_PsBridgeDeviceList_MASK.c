#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_13__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_12__ {int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_ENUM_ETH_ITEM ;
typedef  TYPE_2__ RPC_ENUM_ETH ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 

UINT FUNC8(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_ETH t;
	UINT i;

	o = FUNC3(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC6(&t, sizeof(t));

	// RPC call
	ret = FUNC4(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	for (i = 0;i < t.NumItem;i++)
	{
		RPC_ENUM_ETH_ITEM *item = &t.Items[i];
		wchar_t tmp[MAX_SIZE * 2];

		FUNC5(tmp, sizeof(tmp), item->DeviceName);
		c->Write(c, tmp);
	}

	FUNC2(&t);

	FUNC1(o);

	return 0;
}