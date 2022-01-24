#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ClientSession; TYPE_4__* ClientOption; } ;
struct TYPE_14__ {int /*<<< orphan*/  AccountList; } ;
struct TYPE_13__ {int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  SESSION ;
typedef  TYPE_1__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  TYPE_2__ CLIENT ;
typedef  TYPE_3__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 TYPE_4__* FUNC10 (int) ; 

bool FUNC11(CLIENT *c, RPC_CLIENT_GET_CONNECTION_STATUS *st)
{
	// Validate arguments
	if (c == NULL || st == NULL)
	{
		return false;
	}

	FUNC4(c->AccountList);
	{
		ACCOUNT t, *r;

		// Search for account
		t.ClientOption = FUNC10(sizeof(CLIENT_OPTION));
		FUNC6(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), st->AccountName);

		r = FUNC5(c->AccountList, &t);
		if (r == NULL)
		{
			// Specified account is not found
			FUNC8(c->AccountList);

			FUNC2(t.ClientOption);
			FUNC1(c, ERR_ACCOUNT_NOT_FOUND);
			return false;
		}

		FUNC2(t.ClientOption);

		FUNC3(r->lock);
		{
			FUNC9(st, sizeof(RPC_CLIENT_GET_CONNECTION_STATUS));
			if (r->ClientSession != NULL)
			{
				SESSION *s = r->ClientSession;
				FUNC0(st, s);
			}
		}
		FUNC7(r->lock);
	}
	FUNC8(c->AccountList);

	return true;
}