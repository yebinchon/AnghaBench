#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ClientAuth; int /*<<< orphan*/ * ClientOption; } ;
struct TYPE_7__ {int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; } ;
typedef  TYPE_1__ RPC_CREATE_LINK ;
typedef  TYPE_2__ NAT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_PRESENT ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

UINT FUNC7(NAT *n, RPC_CREATE_LINK *t)
{
	UINT err = ERR_NO_ERROR;

	FUNC3(n->lock);
	{
		if (n->ClientOption == NULL || n->ClientAuth == NULL)
		{
			err = ERR_ACCOUNT_NOT_PRESENT;
		}
		else
		{
			FUNC2(t);

			FUNC5(t, sizeof(RPC_CREATE_LINK));
			t->ClientOption = FUNC6(sizeof(CLIENT_OPTION));
			FUNC0(t->ClientOption, n->ClientOption, sizeof(CLIENT_OPTION));
			t->ClientAuth = FUNC1(n->ClientAuth);
		}
	}
	FUNC4(n->lock);

	return err;
}