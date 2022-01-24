#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; TYPE_6__* ClientOption; int /*<<< orphan*/ * ClientSession; } ;
struct TYPE_14__ {int /*<<< orphan*/  AccountList; } ;
struct TYPE_13__ {int /*<<< orphan*/  NewName; int /*<<< orphan*/  OldName; } ;
typedef  TYPE_1__ RPC_RENAME_ACCOUNT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  TYPE_2__ CLIENT ;
typedef  TYPE_3__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_ACCOUNT_ACTIVE ; 
 int /*<<< orphan*/  ERR_ACCOUNT_ALREADY_EXISTS ; 
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int) ; 

bool FUNC15(CLIENT *c, RPC_RENAME_ACCOUNT *rename, bool inner)
{
	bool ret;
	// Validate arguments
	if (c == NULL || rename == NULL)
	{
		return false;
	}


	ret = false;

	if (FUNC9(rename->NewName, rename->OldName) == 0)
	{
		// The name has not been changed
		return true;
	}

	FUNC6(c->AccountList);
	{
		ACCOUNT t, *r, *r2;

		if (FUNC11(rename->NewName) == 0)
		{
			// Name is invalid
			FUNC3(c, ERR_INVALID_VALUE);
			FUNC13(c->AccountList);
			return false;
		}

		// Search for old account name
		t.ClientOption = FUNC14(sizeof(CLIENT_OPTION));
		FUNC10(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), rename->OldName);

		r = FUNC7(c->AccountList, &t);
		if (r == NULL)
		{
			// Specified account can not be found
			FUNC13(c->AccountList);

			FUNC4(t.ClientOption);
			FUNC3(c, ERR_ACCOUNT_NOT_FOUND);
			return false;
		}

		FUNC4(t.ClientOption);

		// Search for a new account name
		t.ClientOption = FUNC14(sizeof(CLIENT_OPTION));
		FUNC10(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), rename->NewName);

		r2 = FUNC7(c->AccountList, &t);
		if (r2 != NULL)
		{
			// Account with the specified name already exists
			FUNC13(c->AccountList);

			FUNC4(t.ClientOption);
			FUNC3(c, ERR_ACCOUNT_ALREADY_EXISTS);
			return false;
		}

		FUNC4(t.ClientOption);

		FUNC5(r->lock);
		{
			// Check the operating state of the account
			if (r->ClientSession != NULL)
			{
				// The Account is working
				FUNC12(r->lock);
				FUNC13(c->AccountList);
				FUNC3(c, ERR_ACCOUNT_ACTIVE);

				return false;
			}

			// Update the account name
			FUNC10(r->ClientOption->AccountName, sizeof(r->ClientOption->AccountName),
				rename->NewName);

			FUNC0(c, "LC_RENAME_ACCOUNT", rename->OldName, rename->NewName);

			ret = true;
		}
		FUNC12(r->lock);

		FUNC8(c->AccountList);

	}
	FUNC13(c->AccountList);

	FUNC2(c);

	FUNC1(c);

	return ret;
}