#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  Policy; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; int /*<<< orphan*/  Online; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_CREATE_LINK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(PACK *p, RPC_CREATE_LINK *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC6(p, "HubName_Ex",t->HubName);
	FUNC4(p, "Online", t->Online);
	FUNC2(p, t->ClientOption);
	FUNC1(p, t->ClientAuth);
	FUNC3(p, &t->Policy);

	FUNC4(p, "CheckServerCert", t->CheckServerCert);
	if (t->ServerCert != NULL)
	{
		BUF *b;
		b = FUNC7(t->ServerCert, false);
		FUNC5(p, "ServerCert", b);
		FUNC0(b);
	}
}