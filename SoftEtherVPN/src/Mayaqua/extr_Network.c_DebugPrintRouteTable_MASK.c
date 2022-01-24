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
typedef  size_t UINT ;
struct TYPE_3__ {size_t NumEntry; int /*<<< orphan*/ * Entry; } ;
typedef  TYPE_1__ ROUTE_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

void FUNC3(ROUTE_TABLE *r)
{
	UINT i;
	// Validate arguments
	if (r == NULL)
	{
		return;
	}

	if (FUNC2() == false)
	{
		return;
	}

	FUNC0("---- Routing Table (%u Entries) ----\n", r->NumEntry);

	for (i = 0;i < r->NumEntry;i++)
	{
		FUNC0("   ");

		FUNC1(r->Entry[i]);
	}

	FUNC0("------------------------------------\n");
}