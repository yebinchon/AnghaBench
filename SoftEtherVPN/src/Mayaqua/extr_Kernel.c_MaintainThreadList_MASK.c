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
struct TYPE_6__ {scalar_t__ Stopped; } ;
typedef  TYPE_1__ THREAD ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(LIST *o)
{
	UINT i;
	LIST *delete_list = NULL;
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	FUNC4(o);
	{
		for (i = 0;i < FUNC3(o);i++)
		{
			THREAD *t = FUNC2(o, i);

			if (t->Stopped)
			{
				if (delete_list == NULL)
				{
					delete_list = FUNC5(NULL);
				}

				FUNC0(delete_list, t);
			}
		}

		if (delete_list != NULL)
		{
			for (i = 0;i < FUNC3(delete_list);i++)
			{
				THREAD *t = FUNC2(delete_list, i);

				FUNC7(t);

				FUNC1(o, t);
			}

			FUNC6(delete_list);
		}
	}
	FUNC8(o);
}