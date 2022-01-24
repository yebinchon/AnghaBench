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
struct TYPE_15__ {int StartupAccount; int /*<<< orphan*/  lock; TYPE_4__* ClientOption; } ;
struct TYPE_14__ {int /*<<< orphan*/  AccountList; } ;
struct TYPE_13__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_DELETE_ACCOUNT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  TYPE_2__ CLIENT ;
typedef  TYPE_3__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int) ; 

bool FUNC11(CLIENT *c, RPC_CLIENT_DELETE_ACCOUNT *a)
{
	bool ret;
	// Validate arguments
	if (c == NULL || a == NULL)
	{
		return false;
	}

	ret = false;

	FUNC5(c->AccountList);
	{
		ACCOUNT t, *r;
		// Search for an Account

		t.ClientOption = FUNC10(sizeof(CLIENT_OPTION));
		FUNC7(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), a->AccountName);

		r = FUNC6(c->AccountList, &t);
		if (r == NULL)
		{
			// Specified account can not be found
			FUNC9(c->AccountList);

			FUNC3(t.ClientOption);
			FUNC2(c, ERR_ACCOUNT_NOT_FOUND);
			return false;
		}

		FUNC3(t.ClientOption);

		FUNC4(r->lock);
		{
			// Unset the startup account
			ret = true;
			r->StartupAccount = false;
		}
		FUNC8(r->lock);
	}
	FUNC9(c->AccountList);

	if (ret)
	{
		FUNC1(c);
		FUNC0(c);
	}

	return ret;
}