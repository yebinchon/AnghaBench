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
struct TYPE_8__ {int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; } ;
typedef  TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;
typedef  TYPE_2__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int) ; 

RPC_CLIENT_CREATE_ACCOUNT *FUNC6(BUF *b)
{
	RPC_CLIENT_CREATE_ACCOUNT *t;
	FOLDER *f;
	ACCOUNT *a;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	f = FUNC0(b);
	if (f == NULL)
	{
		return NULL;
	}

	a = FUNC2(f);

	FUNC1(f);

	if (a == NULL)
	{
		return NULL;
	}

	FUNC3(a->lock);

	t = FUNC5(sizeof(RPC_CLIENT_CREATE_ACCOUNT));
	t->ClientOption = a->ClientOption;
	t->ClientAuth = a->ClientAuth;
	t->StartupAccount = a->StartupAccount;
	t->CheckServerCert = a->CheckServerCert;
	t->RetryOnServerCert = a->RetryOnServerCert;
	t->ServerCert = a->ServerCert;
	FUNC4(a);

	return t;
}