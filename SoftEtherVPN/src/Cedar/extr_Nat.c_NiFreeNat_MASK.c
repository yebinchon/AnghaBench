#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  Cedar; int /*<<< orphan*/ * Virtual; } ;
typedef  TYPE_1__ NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(NAT *n)
{
	// Validate arguments
	if (n == NULL)
	{
		return;
	}

	// Complete management command
	//NiFreeAdminAccept(n);

	// Stop if the virtual host is running
	FUNC2(n->lock);
	{
		if (n->Virtual != NULL)
		{
			FUNC7(n->Virtual);
			FUNC6(n->Virtual);
			n->Virtual = NULL;
		}
	}
	FUNC8(n->lock);

	// Release the settings
	FUNC3(n);

	// Delete the object
	FUNC4(n->Cedar);
	FUNC5(n->HaltEvent);
	FUNC0(n->lock);

	FUNC1(n);
}