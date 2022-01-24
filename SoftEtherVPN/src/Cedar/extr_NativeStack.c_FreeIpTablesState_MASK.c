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
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  EntryList; } ;
typedef  TYPE_1__ IPTABLES_STATE ;
typedef  TYPE_1__ IPTABLES_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(IPTABLES_STATE *s)
{
	UINT i;
	if (s == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(s->EntryList);i++)
	{
		IPTABLES_ENTRY *e = FUNC1(s->EntryList, i);

		FUNC0(e);
	}

	FUNC3(s->EntryList);

	FUNC0(s);
}