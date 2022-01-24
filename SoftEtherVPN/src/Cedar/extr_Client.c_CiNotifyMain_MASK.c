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
struct TYPE_3__ {int /*<<< orphan*/  NotifyCancelList; scalar_t__ Halt; } ;
typedef  int /*<<< orphan*/  SOCKSET ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ CLIENT ;
typedef  int /*<<< orphan*/  CANCEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(CLIENT *c, SOCK *s)
{
	CANCEL *cancel;
	// Validate arguments
	if (c == NULL || s == NULL)
	{
		return;
	}

	// Register a Cancel
	cancel = FUNC6();
	FUNC5(c->NotifyCancelList);
	{
		FUNC0(c->NotifyCancelList, cancel);
	}
	FUNC10(c->NotifyCancelList);

	// Wait
	while (true)
	{
		char ch = '@';
		SOCKSET set;
		FUNC4(&set);
		FUNC1(&set, s);
		FUNC8(&set, INFINITE, cancel, NULL);

		if (c->Halt)
		{
			// Abort
			break;
		}

		// 1 byte transmission
		if (FUNC9(s, &ch, 1, false) == 0)
		{
			// Disconnected
			break;
		}
	}

	// Disconnect
	FUNC3(s);

	// Unregister the Cancel
	FUNC5(c->NotifyCancelList);
	{
		FUNC2(c->NotifyCancelList, cancel);
	}
	FUNC10(c->NotifyCancelList);

	FUNC7(cancel);
}