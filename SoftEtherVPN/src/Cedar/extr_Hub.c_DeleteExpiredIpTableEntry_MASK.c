#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ UpdatedTime; scalar_t__ DhcpAllocated; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IP_TABLE_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ IP_TABLE_EXPIRE_TIME ; 
 scalar_t__ IP_TABLE_EXPIRE_TIME_DHCP ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 

void FUNC8(LIST *o)
{
	LIST *o2;
	UINT i;
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	o2 = FUNC5(NULL);

	for (i = 0;i < FUNC4(o);i++)
	{
		IP_TABLE_ENTRY *e = FUNC3(o, i);
		if ((e->UpdatedTime + (UINT64)(e->DhcpAllocated ? IP_TABLE_EXPIRE_TIME_DHCP : IP_TABLE_EXPIRE_TIME)) <= FUNC7())
		{
			FUNC0(o2, e);
		}
	}

	for (i = 0;i < FUNC4(o2);i++)
	{
		IP_TABLE_ENTRY *e = FUNC3(o2, i);
		FUNC1(o, e);
		FUNC2(e);
	}

	FUNC6(o2);
}