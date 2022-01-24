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
struct TYPE_4__ {int /*<<< orphan*/  AdminK; int /*<<< orphan*/  AdminX; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; int /*<<< orphan*/ * CfgRw; } ;
typedef  TYPE_1__ NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(NAT *n)
{
	// Validate arguments
	if (n == NULL)
	{
		return;
	}

	// Write the latest configuration
	FUNC5(n);

	// Release the configuration R/W
	FUNC2(n->CfgRw);
	n->CfgRw = NULL;

	FUNC1(n->ClientOption);
	FUNC0(n->ClientAuth);

	FUNC4(n->AdminX);
	FUNC3(n->AdminK);
}