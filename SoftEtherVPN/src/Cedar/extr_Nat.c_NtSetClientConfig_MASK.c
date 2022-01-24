#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {scalar_t__ Online; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ClientAuth; int /*<<< orphan*/ * ClientOption; } ;
struct TYPE_8__ {int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; } ;
typedef  TYPE_1__ RPC_CREATE_LINK ;
typedef  TYPE_2__ NAT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 

UINT FUNC10(NAT *n, RPC_CREATE_LINK *t)
{
	FUNC4(n->lock);
	{
		if (n->ClientOption != NULL || n->ClientAuth != NULL)
		{
			FUNC3(n->ClientOption);
			FUNC0(n->ClientAuth);
		}

		n->ClientOption = FUNC9(sizeof(CLIENT_OPTION));
		FUNC1(n->ClientOption, t->ClientOption, sizeof(CLIENT_OPTION));
		n->ClientAuth = FUNC2(t->ClientAuth);
	}
	FUNC8(n->lock);

	FUNC5(n);

	if (n->Online)
	{
		FUNC6(n, NULL);
		FUNC7(n, NULL);
	}

	return ERR_NO_ERROR;
}