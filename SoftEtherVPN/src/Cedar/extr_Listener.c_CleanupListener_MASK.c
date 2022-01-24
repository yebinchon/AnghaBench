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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Cedar; int /*<<< orphan*/  Event; int /*<<< orphan*/  Thread; int /*<<< orphan*/  lock; int /*<<< orphan*/ * Sock; } ;
typedef  TYPE_1__ LISTENER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(LISTENER *r)
{
	UINT i = 0;
	// Validate arguments
	if (r == NULL)
	{
		return;
	}


	if (r->Sock != NULL)
	{
		FUNC4(r->Sock);
	}

	FUNC0(r->lock);
	FUNC5(r->Thread);
	FUNC3(r->Event);

	FUNC2(r->Cedar);

	FUNC1(r);
}