#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  a ;
struct TYPE_7__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; } ;
struct TYPE_6__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; } ;
typedef  TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;
typedef  TYPE_2__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  TAG_ROOT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

BUF *FUNC5(RPC_CLIENT_CREATE_ACCOUNT *t)
{
	BUF *b;
	FOLDER *root;
	ACCOUNT a;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	root = FUNC0(NULL, TAG_ROOT);
	FUNC4(&a, sizeof(a));
	a.ClientOption = t->ClientOption;
	a.ClientAuth = t->ClientAuth;
	a.CheckServerCert = t->CheckServerCert;
	a.RetryOnServerCert = t->RetryOnServerCert;
	a.ServerCert = t->ServerCert;
	a.StartupAccount = t->StartupAccount;

	FUNC3(root, &a);

	b = FUNC2(root, true, true);
	FUNC1(root);

	return b;
}