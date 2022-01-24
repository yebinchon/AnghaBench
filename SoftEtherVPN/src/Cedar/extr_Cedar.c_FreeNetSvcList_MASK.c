#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  NetSvcList; } ;
struct TYPE_6__ {struct TYPE_6__* Name; } ;
typedef  TYPE_1__ NETSVC ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(CEDAR *cedar)
{
	UINT i;
	// Validate arguments
	if (cedar == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(cedar->NetSvcList);i++)
	{
		NETSVC *n = FUNC1(cedar->NetSvcList, i);
		FUNC0(n->Name);
		FUNC0(n);
	}
	FUNC3(cedar->NetSvcList);
}