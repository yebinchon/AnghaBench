#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  c ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/ * AccountList; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; TYPE_1__* ClientOption; scalar_t__ StartupAccount; } ;
struct TYPE_13__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_12__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_2__ RPC_CLIENT_CONNECT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 
 TYPE_4__* client ; 

void FUNC20()
{
	UINT i;
	LIST *o;
	if (client != NULL)
	{
		// It is already in running
		return;
	}

	// OS check
	FUNC1();

#ifdef	OS_WIN32
	RegistWindowsFirewallAll();
#endif

	// Creating a client
	client = FUNC4();

	// Start the Keep
	FUNC2(client);

	// Start the RPC server
	FUNC5(client);

	// Start the Saver
	FUNC3(client);

	// Start the startup connection
	o = FUNC13(NULL);
	FUNC12(client->AccountList);
	{
		for (i = 0;i < FUNC10(client->AccountList);i++)
		{
			ACCOUNT *a = FUNC9(client->AccountList, i);
			FUNC11(a->lock);
			{
				if (a->StartupAccount)
				{
					FUNC0(o, FUNC6(a->ClientOption->AccountName));
				}
			}
			FUNC17(a->lock);
		}
	}
	FUNC18(client->AccountList);

	for (i = 0;i < FUNC10(o);i++)
	{
		wchar_t *s = FUNC9(o, i);
		RPC_CLIENT_CONNECT c;
		FUNC19(&c, sizeof(c));
		FUNC16(c.AccountName, sizeof(c.AccountName), s);
		FUNC7(client, &c);
		FUNC8(s);
	}
	FUNC15(o);
}