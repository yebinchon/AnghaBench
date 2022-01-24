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
struct TYPE_4__ {int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  ClientAuth; struct TYPE_4__* ClientOption; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(ACCOUNT *a)
{
	// Validate arguments
	if (a == NULL)
	{
		return;
	}

	// Release the lock
	FUNC1(a->lock);

	// Release the client option
	FUNC2(a->ClientOption);

	// Release the client authentication data
	FUNC0(a->ClientAuth);

	if (a->ServerCert != NULL)
	{
		FUNC3(a->ServerCert);
	}

	FUNC2(a);
}