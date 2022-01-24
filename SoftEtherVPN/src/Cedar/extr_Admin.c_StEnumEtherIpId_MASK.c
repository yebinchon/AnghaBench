#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_13__ {TYPE_2__* Server; } ;
struct TYPE_12__ {int NumItem; int /*<<< orphan*/ * IdList; } ;
struct TYPE_11__ {TYPE_1__* IPsecServer; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_10__ {int /*<<< orphan*/  LockSettings; int /*<<< orphan*/  EtherIPIdList; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_ENUM_ETHERIP_ID ;
typedef  int /*<<< orphan*/  ETHERIP_ID ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int ERR_NOT_SUPPORTED ; 
 int ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

UINT FUNC9(ADMIN *a, RPC_ENUM_ETHERIP_ID *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	SERVER_ADMIN_ONLY;
	NO_SUPPORT_FOR_BRIDGE;
	if (FUNC2(s, "b_support_ipsec") == false || s->IPsecServer == NULL)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC1(t);
	FUNC7(t, sizeof(RPC_ENUM_ETHERIP_ID));

	FUNC5(s->IPsecServer->LockSettings);
	{
		UINT i;
		UINT num;

		num = FUNC4(s->IPsecServer->EtherIPIdList);

		t->NumItem = num;
		t->IdList = FUNC8(sizeof(ETHERIP_ID) * num);

		for (i = 0;i < num;i++)
		{
			ETHERIP_ID *d = &t->IdList[i];
			ETHERIP_ID *src = FUNC3(s->IPsecServer->EtherIPIdList, i);

			FUNC0(d, src, sizeof(ETHERIP_ID));
		}
	}
	FUNC6(s->IPsecServer->LockSettings);

	return ERR_NO_ERROR;
}