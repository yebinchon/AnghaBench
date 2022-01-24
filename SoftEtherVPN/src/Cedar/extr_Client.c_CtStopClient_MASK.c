#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_14__ {int Halt; int /*<<< orphan*/  AccountList; } ;
struct TYPE_13__ {int /*<<< orphan*/  lock; TYPE_1__* ClientSession; } ;
struct TYPE_12__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_2__** FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_3__* client ; 

void FUNC15()
{
	UINT i, num;
	ACCOUNT **account_list;
	if (client == NULL)
	{
		// It is not running yet
		return;
	}

	// Halting flag
	client->Halt = true;

	// Disconnect all the RPC
	FUNC3(client);

	// Exit the client notification service
	FUNC4();

	// Exit the Keep
	FUNC1(client);

	// Disconnect all accounts connected
	FUNC9(client->AccountList);
	{
		num = FUNC7(client->AccountList);
		account_list = FUNC12(client->AccountList);
	}
	FUNC14(client->AccountList);

	for (i = 0;i < num;i++)
	{
		ACCOUNT *a = account_list[i];
		SESSION *s = NULL;

		FUNC8(a->lock);
		{
			if (a->ClientSession != NULL)
			{
				s = a->ClientSession;
				FUNC0(s->ref);
			}
		}
		FUNC13(a->lock);

		if (s != NULL)
		{
			FUNC11(s);
			FUNC10(s);
			FUNC8(a->lock);
			{
				if (a->ClientSession != NULL)
				{
					FUNC10(a->ClientSession);
					a->ClientSession = NULL;
				}
			}
			FUNC13(a->lock);
		}
	}

	FUNC6(account_list);

	// Stop the Saver
	FUNC2(client);

	// Release the client
	FUNC5(client);
	client = NULL;
}