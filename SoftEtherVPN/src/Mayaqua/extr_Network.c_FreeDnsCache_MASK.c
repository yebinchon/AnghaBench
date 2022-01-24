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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* HostName; } ;
typedef  TYPE_1__ DNSCACHE ;

/* Variables and functions */
 int /*<<< orphan*/ * DnsCache ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6()
{
	FUNC3();
	{
		DNSCACHE *c;
		UINT i;
		for (i = 0;i < FUNC2(DnsCache);i++)
		{
			// Release the memory for the entry
			c = FUNC1(DnsCache, i);
			FUNC0(c->HostName);
			FUNC0(c);
		}
	}
	FUNC5();

	// Release the list
	FUNC4(DnsCache);
	DnsCache = NULL;
}