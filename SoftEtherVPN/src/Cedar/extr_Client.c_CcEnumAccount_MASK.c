#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  a ;
typedef  size_t UINT ;
struct TYPE_17__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_16__ {size_t NumItem; TYPE_3__** Items; } ;
struct TYPE_15__ {scalar_t__ Port; int /*<<< orphan*/  HubName; int /*<<< orphan*/  AccountName; } ;
struct TYPE_14__ {TYPE_1__* ClientOption; int /*<<< orphan*/  AccountName; } ;
struct TYPE_13__ {scalar_t__ Port; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_3__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;
typedef  TYPE_4__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef  TYPE_5__ REMOTE_CLIENT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 size_t FUNC0 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 size_t ERR_INTERNAL_ERROR ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 

UINT FUNC11(REMOTE_CLIENT *r, RPC_CLIENT_ENUM_ACCOUNT *e)
{
	PACK *ret;
	UINT err = 0;
	// Validate arguments
	if (r == NULL || e == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	ret = FUNC5(r->Rpc, "EnumAccount", NULL);

	if (FUNC7(ret))
	{
		UINT i;
		FUNC3(e, ret);

		for (i = 0;i < e->NumItem;i++)
		{
			RPC_CLIENT_ENUM_ACCOUNT_ITEM *t = e->Items[i];

			if (FUNC4(t->HubName) && t->Port == 0)
			{
				UINT err2;
				RPC_CLIENT_GET_ACCOUNT a;

				// Because the Client Manager can not get the port number and HUB name
				// when enumerating in the VPN Client of the old version, get these separately.
				FUNC10(&a, sizeof(a));
				FUNC9(a.AccountName, sizeof(a.AccountName), t->AccountName);
				err2 = FUNC0(r, &a);
				if (err2 == ERR_NO_ERROR)
				{
					FUNC8(t->HubName, sizeof(t->HubName), a.ClientOption->HubName);
					t->Port = a.ClientOption->Port;

					FUNC1(&a);
				}
			}
		}
	}
	else
	{
		err = FUNC6(ret);
	}

	FUNC2(ret);

	return err;
}