#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
struct TYPE_7__ {scalar_t__ Param1; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

bool FUNC5(LIST *o, char *filename, UINT64 user_hash, UINT64 lifetime)
{
	bool ret = false;
	UINT64 now = FUNC3();
	// Validate arguments
	if (o == NULL || filename == NULL || user_hash == 0)
	{
		return false;
	}

	FUNC2(o);
	{
		if (lifetime != 0)
		{
			if (o->Param1 == 0 || (now >= (o->Param1 + lifetime)))
			{
				FUNC0(o);

				o->Param1 = now;
			}
		}

		ret = FUNC1(o, filename, user_hash);
	}
	FUNC4(o);

	return ret;
}