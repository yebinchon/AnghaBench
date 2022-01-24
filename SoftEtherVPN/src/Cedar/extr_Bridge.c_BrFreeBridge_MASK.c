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
struct TYPE_4__ {int /*<<< orphan*/  Session; int /*<<< orphan*/ * ParentLocalBridge; } ;
typedef  TYPE_1__ BRIDGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(BRIDGE *b)
{
	// Validate arguments
	if (b == NULL)
	{
		return;
	}

	if (b->ParentLocalBridge != NULL)
	{
		b->ParentLocalBridge = NULL;
	}

	// Stop session thread
	FUNC2(b->Session);
	FUNC1(b->Session);

	FUNC0(b);
}