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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ NIC_ENTRY ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(LIST *o, void *addr)
{
	bool ret = false;
	UINT i;
	// Validate arguments
	if (o == NULL || addr == NULL)
	{
		return false;
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		NIC_ENTRY *e = FUNC1(o, i);

		if (FUNC0(e->MacAddress, addr, 6) == 0)
		{
			ret = true;
			break;
		}
	}

	return ret;
}