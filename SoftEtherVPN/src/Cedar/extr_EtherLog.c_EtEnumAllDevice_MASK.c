#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_12__ {size_t NumItem; TYPE_2__* Items; } ;
struct TYPE_11__ {int /*<<< orphan*/  DeviceName; } ;
struct TYPE_10__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ RPC_ENUM_DEVICE_ITEM ;
typedef  TYPE_3__ RPC_ENUM_DEVICE ;
typedef  int /*<<< orphan*/  EL ;

/* Variables and functions */
 size_t ERR_NOT_SUPPORTED ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC6 (int) ; 

UINT FUNC7(EL *e, RPC_ENUM_DEVICE *t)
{
	TOKEN_LIST *eth;
	UINT i;
	if (FUNC3() == false)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC0(t);
	FUNC5(t, sizeof(RPC_ENUM_DEVICE));

	eth = FUNC2();

	t->NumItem = eth->NumTokens;
	t->Items = FUNC6(sizeof(RPC_ENUM_DEVICE_ITEM) * t->NumItem);

	for (i = 0;i < eth->NumTokens;i++)
	{
		char *name = eth->Token[i];
		RPC_ENUM_DEVICE_ITEM *item = &t->Items[i];

		FUNC4(item->DeviceName, sizeof(item->DeviceName), name);
	}

	FUNC1(eth);

	return ERR_NO_ERROR;
}