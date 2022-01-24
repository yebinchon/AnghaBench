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
struct TYPE_3__ {int CheckServerCert; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/ * Policy; int /*<<< orphan*/  Auth; int /*<<< orphan*/  Option; scalar_t__ Offline; } ;
typedef  TYPE_1__ LINK ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 

void FUNC10(FOLDER *f, LINK *k)
{
	// Validate arguments
	if (f == NULL || k == NULL)
	{
		return;
	}

	FUNC6(k->lock);
	{
		// Online
		FUNC0(f, "Online", k->Offline ? false : true);

		// Client options
		FUNC4(FUNC2(f, "ClientOption"), k->Option);

		// Client authentication data
		FUNC3(FUNC2(f, "ClientAuth"), k->Auth);

		// Policy
		if (k->Policy != NULL)
		{
			FUNC7(FUNC2(f, "Policy"), k->Policy, true);
		}

		FUNC0(f, "CheckServerCert", k->CheckServerCert);

		if (k->ServerCert != NULL)
		{
			BUF *b = FUNC9(k->ServerCert, false);
			FUNC1(f, "ServerCert", b);
			FUNC5(b);
		}
	}
	FUNC8(k->lock);
}