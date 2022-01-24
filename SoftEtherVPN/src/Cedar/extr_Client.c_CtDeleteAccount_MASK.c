#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_18__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ClientSession; TYPE_4__* ClientOption; } ;
struct TYPE_17__ {int /*<<< orphan*/  AccountList; scalar_t__ Halt; } ;
struct TYPE_16__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_DELETE_ACCOUNT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  TYPE_2__ CLIENT ;
typedef  TYPE_3__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  ERR_ACCOUNT_ACTIVE ; 
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (int) ; 

bool FUNC14(CLIENT *c, RPC_CLIENT_DELETE_ACCOUNT *a, bool inner)
{
	bool ret;
	// Validate arguments
	if (c == NULL || a == NULL)
	{
		return false;
	}

	ret = false;

	if (c->Halt)
	{
		// Don't allow the removal of the account in the process of stopping
		FUNC4(c, ERR_INTERNAL_ERROR);
		return false;
	}

	FUNC8(c->AccountList);
	{
		ACCOUNT t, *r;
		// Search for an Account

		t.ClientOption = FUNC13(sizeof(CLIENT_OPTION));
		FUNC10(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), a->AccountName);

		r = FUNC9(c->AccountList, &t);
		if (r == NULL)
		{
			// Specified account can not be found
			FUNC12(c->AccountList);

			FUNC6(t.ClientOption);
			FUNC4(c, ERR_ACCOUNT_NOT_FOUND);
			return false;
		}

		FUNC6(t.ClientOption);

		FUNC7(r->lock);
		{
			// Check the operating state of the account
			if (r->ClientSession != NULL)
			{
				// The account is active
				FUNC11(r->lock);
				FUNC12(c->AccountList);
				FUNC4(c, ERR_ACCOUNT_ACTIVE);

				return false;
			}

			// Remove this account from the list
			FUNC5(c->AccountList, r);
		}
		FUNC11(r->lock);

		// Free the memory of this account
		FUNC1(r);

		FUNC0(c, "LC_DELETE_ACCOUNT", a->AccountName);
		ret = true;

	}
	FUNC12(c->AccountList);

	if (ret)
	{
		FUNC3(c);
		FUNC2(c);
	}

	return ret;
}