#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_19__ {int /*<<< orphan*/  lock; TYPE_1__* ClientSession; TYPE_5__* ClientOption; } ;
struct TYPE_18__ {int /*<<< orphan*/  AccountList; } ;
struct TYPE_17__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_16__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ RPC_CLIENT_CONNECT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  TYPE_3__ CLIENT ;
typedef  TYPE_4__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_ACCOUNT_INACTIVE ; 
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC13 (int) ; 

bool FUNC14(CLIENT *c, RPC_CLIENT_CONNECT *connect, bool inner)
{
	bool ret = false;
	ACCOUNT t, *r;
	SESSION *s = NULL;
	// Validate arguments
	if (c == NULL || connect == NULL)
	{
		return false;
	}

	FUNC6(c->AccountList);
	{
		// Search for account
		t.ClientOption = FUNC13(sizeof(CLIENT_OPTION));
		FUNC10(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), connect->AccountName);

		r = FUNC8(c->AccountList, &t);
		if (r == NULL)
		{
			// Specified account isn't found
			FUNC12(c->AccountList);

			FUNC4(t.ClientOption);
			FUNC3(c, ERR_ACCOUNT_NOT_FOUND);
			return false;
		}

		FUNC4(t.ClientOption);

		FUNC5(r->lock);
		{
			if (r->ClientSession == NULL)
			{
				// Not connected
				FUNC3(c, ERR_ACCOUNT_INACTIVE);
			}
			else
			{
				s = r->ClientSession;
				FUNC0(s->ref);
				// Disconnect complete
				r->ClientSession = NULL;
				ret = true;
			}
		}
		FUNC11(r->lock);
	}
	FUNC12(c->AccountList);

	if (s != NULL)
	{
		// Disconnect the connection (Wait until the disconnection is complete)
		FUNC1(c, "LC_DISCONNECT", connect->AccountName);
		FUNC9(s);
		FUNC7(s);
	}


	if (ret != false)
	{
		FUNC2(c);
	}

	return ret;
}