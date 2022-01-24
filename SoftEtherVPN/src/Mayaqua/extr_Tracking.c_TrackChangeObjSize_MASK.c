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
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {scalar_t__ Address; int /*<<< orphan*/  Size; } ;
typedef  TYPE_1__ TRACKING_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(UINT64 addr, UINT size, UINT64 new_addr)
{
	TRACKING_OBJECT *o;
	// Validate arguments
	if (addr == 0)
	{
		return;
	}

	if ((FUNC3() && FUNC2()) == false)
	{
		// Don't track in detail if the memory check option is not specified
		return;
	}

	FUNC4();
	{
		o = FUNC5(addr);
		if (o == NULL)
		{
			FUNC6();
			return;
		}

		FUNC0(o, false);

		o->Size = size;
		o->Address = new_addr;

		FUNC1(o);
	}
	FUNC6();
}