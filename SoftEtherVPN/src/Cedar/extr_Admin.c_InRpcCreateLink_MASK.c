#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ServerCert; void* CheckServerCert; int /*<<< orphan*/  Policy; void* ClientAuth; void* ClientOption; void* Online; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_CREATE_LINK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CLIENT_AUTH ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 void* FUNC9 (int) ; 

void FUNC10(RPC_CREATE_LINK *t, PACK *p)
{
	BUF *b;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC8(t, sizeof(RPC_CREATE_LINK));
	FUNC7(p, "HubName_Ex", t->HubName, sizeof(t->HubName));
	t->Online = FUNC5(p, "Online");
	t->ClientOption = FUNC9(sizeof(CLIENT_OPTION));
	FUNC3(t->ClientOption, p);
	t->ClientAuth  = FUNC9(sizeof(CLIENT_AUTH));
	FUNC2(t->ClientAuth, p);
	FUNC4(&t->Policy, p);

	t->CheckServerCert = FUNC5(p, "CheckServerCert");
	b = FUNC6(p, "ServerCert");
	if (b != NULL)
	{
		t->ServerCert = FUNC0(b, false);
		FUNC1(b);
	}
}