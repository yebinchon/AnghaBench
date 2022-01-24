#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RPC_CLIENT_CREATE_ACCOUNT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(BUF *b)
{
	RPC_CLIENT_CREATE_ACCOUNT *a;
	// Validate arguments
	if (b == NULL)
	{
		return false;
	}

	a = FUNC0(b);
	if (a != NULL)
	{
		FUNC1(a);
		FUNC2(a);

		return true;
	}
	else
	{
		return false;
	}
}